<%@ page import="uk.ac.shu.webarch.eregister2.Student" %>



<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'full_studentname', 'error')} ">
	<label for="full_studentname">
		<g:message code="student.full_studentname.label" default="Fullstudentname" />
		
	</label>
	<g:textField name="full_studentname" value="${studentInstance?.full_studentname}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'name', 'error')} ">
	<label for="name">
		<g:message code="student.name.label" default="Name" />
		
	</label>
	<g:textField name="name" value="${studentInstance?.name}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'studentName', 'error')} ">
	<label for="studentName">
		<g:message code="student.studentName.label" default="Student Name" />
		
	</label>
	<g:textField name="studentName" value="${studentInstance?.studentName}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'studentNumber', 'error')} ">
	<label for="studentNumber">
		<g:message code="student.studentNumber.label" default="Student Number" />
		
	</label>
	<g:textField name="studentNumber" value="${studentInstance?.studentNumber}"/>
</div>

<div class="fieldcontain ${hasErrors(bean: studentInstance, field: 'student_register', 'error')} ">
	<label for="student_register">
		<g:message code="student.student_register.label" default="Studentregister" />
		
	</label>
	
<ul class="one-to-many">
<g:each in="${studentInstance?.student_register?}" var="s">
    <li><g:link controller="regEntry" action="show" id="${s.id}">${s?.encodeAsHTML()}</g:link></li>
</g:each>
<li class="add">
<g:link controller="regEntry" action="create" params="['student.id': studentInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'regEntry.label', default: 'RegEntry')])}</g:link>
</li>
</ul>

</div>

