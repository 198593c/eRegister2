import uk.ac.shu.webarch.eregister2.*;

class BootStrap {

    def init = { servletContext ->

  println("BootStrap::init");

  def C_instructor = Instructor.findByStaffNumber('843') ?: new Instructor(staffNumber:'843', name:'c').save();
  def K_instructor = Instructor.findByStaffNumber('463') ?: new Instructor(staffNumber:'463', name:'K').save();

  def Archs_course = Course.findByCourseCode('tg345') ?: new Course(courseCode:'tg354', courseName:'Archs').save();

  def new_Class = new RegClass(name:'Archs-Mon', class_Instructor:C_instructor, class_Course:Archs_course).save();


    }

    def destroy = {
    }
}


