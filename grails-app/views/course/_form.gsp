<%@ page import="uk.ac.shu.webarch.eregister2.Course" %>



<div class="fieldcontain ${hasErrors(bean: courseInstance, field: 'courses_include_these_classes', 'error')} ">
	<label for="courses_include_these_classes">
		<g:message code="course.courses_include_these_classes.label" default="Coursesincludetheseclasses" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${courseInstance?.courses_include_these_classes?}" var="c">
    <li><g:link controller="regClass" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="regClass" action="create" params="['course.id': courseInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'regClass.label', default: 'RegClass')])}</g:link>
</li>
</ul>

</div>

