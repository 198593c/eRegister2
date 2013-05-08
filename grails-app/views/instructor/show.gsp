
<%@ page import="uk.ac.shu.webarch.eregister2.Instructor" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'instructor.label', default: 'Instructor')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-instructor" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="list"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-instructor" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list instructor">
			
				<g:if test="${instructorInstance?.classes_taught_by_this_instructor}">
				<li class="fieldcontain">
					<span id="classes_taught_by_this_instructor-label" class="property-label"><g:message code="instructor.classes_taught_by_this_instructor.label" default="Classestaughtbythisinstructor" /></span>
					
						<g:each in="${instructorInstance.classes_taught_by_this_instructor}" var="c">
						<span class="property-value" aria-labelledby="classes_taught_by_this_instructor-label"><g:link controller="regClass" action="show" id="${c.id}">${c?.encodeAsHTML()}</g:link></span>
						</g:each>
					
				</li>
				</g:if>
			
				<g:if test="${instructorInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="instructor.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${instructorInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${instructorInstance?.staffNumber}">
				<li class="fieldcontain">
					<span id="staffNumber-label" class="property-label"><g:message code="instructor.staffNumber.label" default="Staff Number" /></span>
					
						<span class="property-value" aria-labelledby="staffNumber-label"><g:fieldValue bean="${instructorInstance}" field="staffNumber"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form>
				<fieldset class="buttons">
					<g:hiddenField name="id" value="${instructorInstance?.id}" />
					<g:link class="edit" action="edit" id="${instructorInstance?.id}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
