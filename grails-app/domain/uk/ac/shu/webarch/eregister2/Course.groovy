package uk.ac.shu.webarch.eregister2

class Course {

	String courseName
	String courseCode

	static hasMany = [
	courses_include_these_classes:RegClass
	]
	
	static mappedBy = [
	courses_include_these_classes:'class_Course'
	]

    static constraints = {
    }
}

