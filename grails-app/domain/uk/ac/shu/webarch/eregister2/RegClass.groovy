package uk.ac.shu.webarch.eregister2

class RegClass {

	String name
	Instructor class_Instructor
	Course class_Course

	static hasMany = [
	reg_class_has_regSheets:RegSheet

	]
	
	static mappedBy = [
	reg_class_has_regSheets:'class_RegClass'

	]



    static constraints = {
    }
}
