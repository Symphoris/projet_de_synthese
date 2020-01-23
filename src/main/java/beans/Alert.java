package beans;

import java.io.IOException;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import common.Configuration;

public class Alert {

	private Integer id;
	private Boolean state;
	private Integer level;
	private Timestamp date;
	private String message;
	private Integer objectId;
	
	public Alert(ResultSet result) throws SQLException {
		id = result.getInt(1);
		state = result.getBoolean(2);
		level = result.getInt(3);
		date = result.getTimestamp(4);
		message = result.getString(5);
		objectId = result.getInt(6);
	}
	
	public Alert(int id) {
		this.id=id;
	}

	public boolean isActive() {
		return state;
	}

	public String getTableLine() {
		String line = "<tr>\n";
		line+="<td>" + date + "</td>";
		line+="<td>" + level + "</td>";
		line+="<td>" + message + "</td>";
		line+="<td>" + objectId + "</td>";
		if(state) {
			// If the alert is active, we add a link to disable it
			line+="<td><form action='' method='post'><input type='hidden' name='alertId' value='"+id+"'>" +
					"<div class='row'><input type='submit' value='Disable'></div></form></td>";
		}
		line+="</tr>\n";
		return line;
	}

	public void disableOnDB() throws IOException {
		Connection connection = Configuration.connectionPool.getConnection();
		try {
			// We retrieve the apartment
			PreparedStatement stmt = connection.prepareStatement("UPDATE Alerts SET State_Alert=0 WHERE ID_Alert=?");
			stmt.setInt(1, id);
			stmt.executeUpdate();
			this.state=false;
			Configuration.connectionPool.closeConnection(connection);
		}
		catch(Exception e) {
			Configuration.connectionPool.closeConnection(connection);
			throw new IOException("An error occured while updating the state of the alert : " + e.getMessage());
		}
	}
}
