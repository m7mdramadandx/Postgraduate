package folder;

public class Data {

    public String id;
    String dept;
    String status;
    String c_dept;
    String first_name;
    String last_name;
    String email;
    String phone;
    String first_round;
    String second_round;
    String national_id;
    String password;

    public Data(String id, String dept, String c_dept, String status, String first_name, String last_name,
            String email, String phone, String first_round, String second_round, String national_id, String password) {
        this.id = id;
        this.dept = dept;
        this.c_dept = c_dept;
        this.status = status;
        this.first_round = first_round;
        this.second_round = second_round;
        this.phone = phone;
        this.first_name = first_name;
        this.last_name = last_name;
        this.email = email;
        this.national_id = national_id;
        this.password = password;

    }

    public Data() {

    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getNational_id() {
        return national_id;
    }

    public void setNational_id(String national_id) {
        this.national_id = national_id;
    }

    public String getFirst_name() {
        return first_name;
    }

    public void setFirst_name(String first_name) {
        this.first_name = first_name;
    }

    public String getLast_name() {
        return last_name;
    }

    public void setLast_name(String last_name) {
        this.last_name = last_name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getfirst_round() {
        return first_round;
    }

    public void setfirst_round(String first_round) {
        this.first_round = first_round;
    }

    public String getsecond_round() {
        return second_round;
    }

    public void setsecond_round(String second_round) {
        this.second_round = second_round;
    }

    public String getc_dept() {
        return c_dept;
    }

    public void setc_dept(String c_dept) {
        this.c_dept = c_dept;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getDept() {
        return dept;
    }

    public void setDept(String dept) {
        this.dept = dept;
    }
}
