import ballerina.lang.messages;
import ballerina.net.http;
import ballerina.data.sql;

service<http> HealthService {

resource getDiseaseInfo (message m) {


message response = {};
json x = HealthInfo("a");
 messages:setStringPayload(response, x);
 

        reply response;
    }
}
function HealthInfo(json m)(json){
	 map props = {"jdbcUrl":"jdbc:mysql://localhost:3306/db1",
                    "username":"root", "password":" "};
    sql:ClientConnector testDB = create
                                 sql:ClientConnector(props);

    sql:Parameter[] params = [];
    int ret = sql:ClientConnector.update(testDB,
                    "create table HealthInfo(id int auto_increment,  " +
                    " description varchar(255), primary key (id))", params);

    datatable dt = sql:ClientConnector.select(testDB,
                                "SELECT * from HealthInfo");
    var jsonRes, err = <json>dt;
    

        sql:ClientConnector.close(testDB);
	
	return jsonRes;

}