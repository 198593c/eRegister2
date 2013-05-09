package uk.ac.shu.webarch.eregister2

class Student {

	String name
	String studentNumber
	String full_studentname
	String studentName

	static hasMany = [
	student_register:RegEntry

	]
	
	static mappedBy = [
	student_register:'class_Student'

	]

    static constraints = {
    }
}
