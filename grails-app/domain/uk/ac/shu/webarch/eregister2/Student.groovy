package uk.ac.shu.webarch.eregister2

class Student {

	String name
	String studentNumber

	static hasMany = [
	student_register:RegEntry

	]
	
	static mappedBy = [
	student_register:'class_Student'

	]

    static constraints = {
    }
}
