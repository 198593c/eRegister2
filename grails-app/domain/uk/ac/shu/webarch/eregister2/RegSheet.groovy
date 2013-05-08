package uk.ac.shu.webarch.eregister2

class RegSheet {

	RegClass class_RegClass

	static hasMany = [
	sheet_has_many_classes:RegEntry
	]
	
	static mappedBy = [
	sheet_has_many_classes:'class_RegSheet'
	]


    static constraints = {
    }
}
