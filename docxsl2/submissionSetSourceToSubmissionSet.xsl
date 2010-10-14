<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.1"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xdsdemo="http://mirc.rsna.org/xdsdemo"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xmlns:rs="urn:oasis:names:tc:ebxml-regrep:registry:xsd:2.1"
	xmlns:rim="urn:oasis:names:tc:ebxml-regrep:rim:xsd:2.1"
	xmlns="urn:oasis:names:tc:ebxml-regrep:rim:xsd:2.1" >
<xsl:output method="xml" version="1.0" omit-xml-declaration="no" indent="yes"/>

<xsl:param name="path"/>
<xsl:param name="patient-name"/>
<xsl:param name="full-name"/>
<xsl:param name="given-name"/>
<xsl:param name="family-name"/>
<xsl:param name="patient-id"/>
<xsl:param name="assigning-authority"/>
<xsl:param name="assigning-authority-OID"/>
<xsl:param name="author-id"/>
<xsl:param name="author-family-name"/>
<xsl:param name="author-given-name"/>
<xsl:param name="author-assigning-authority-OID"/>
<xsl:param name="institution-name"/>
<xsl:param name="exam-description"/>
<xsl:param name="sop-instance-uid"/>
<xsl:param name="document-id"/>
<xsl:param name="title"/>
<xsl:param name="date"/>
<xsl:param name="time"/>
<xsl:param name="street"/>
<xsl:param name="city"/>
<xsl:param name="state"/>
<xsl:param name="zip"/>
<xsl:param name="country"/>
<xsl:param name="sex"/>
<xsl:param name="birth-date"/>
<xsl:param name="uuid"/>
<xsl:param name="uid1"/>
<xsl:param name="uid2"/>
<xsl:param name="uid3"/>
<xsl:param name="uid4"/>
<xsl:param name="pdf"/>

<xsl:template match="*">
	<xsl:copy>
		<xsl:apply-templates select="*|@*|text()"/>
	</xsl:copy>
</xsl:template>

<xsl:template match="@*|text()">
	<xsl:copy/>
</xsl:template>

<xsl:template match="xdsdemo:ExternalIdentifier-patient-id">
	<ExternalIdentifier>
		<xsl:copy-of select="@identificationScheme"/>
		<xsl:attribute name="value">
			<xsl:value-of select="$patient-id"/>
			<xsl:text>^^^</xsl:text>
			<xsl:value-of select="$assigning-authority"/>
		</xsl:attribute>
		<xsl:apply-templates select="* | text()"/>
	</ExternalIdentifier>
</xsl:template>

<xsl:template match="xdsdemo:ExternalIdentifier-docentryuniqueid">
	<ExternalIdentifier>
		<xsl:copy-of select="@identificationScheme"/>
		<xsl:attribute name="value">
			<xsl:value-of select="$uid1"/>
		</xsl:attribute>
		<xsl:apply-templates select="* | text()"/>
	</ExternalIdentifier>
</xsl:template>

<xsl:template match="xdsdemo:ExternalIdentifier-docsubmissionuniqueid">
	<ExternalIdentifier>
		<xsl:copy-of select="@identificationScheme"/>
		<xsl:attribute name="value">
			<xsl:value-of select="$uid2"/>
		</xsl:attribute>
		<xsl:apply-templates select="* | text()"/>
	</ExternalIdentifier>
</xsl:template>

<xsl:template match="xdsdemo:uuid-attribute">
	<xsl:attribute name="{@name}">
		<xsl:text>urn:uuid:</xsl:text>
		<xsl:value-of select="$uuid"/>
	</xsl:attribute>
</xsl:template>

<xsl:template match="xdsdemo:uuid">
	<xsl:text>urn:uuid:</xsl:text>
	<xsl:value-of select="$uuid"/>
</xsl:template>

<xsl:template match="xdsdemo:patient-name">
	<xsl:value-of select="$patient-name"/>
</xsl:template>

<xsl:template match="xdsdemo:full-name">
	<xsl:value-of select="$full-name"/>
</xsl:template>

<xsl:template match="xdsdemo:given-name">
	<xsl:value-of select="$given-name"/>
</xsl:template>

<xsl:template match="xdsdemo:family-name">
	<xsl:value-of select="$family-name"/>
</xsl:template>

<xsl:template match="xdsdemo:patient-id">
	<xsl:value-of select="$patient-id"/>
</xsl:template>

<xsl:template match="xdsdemo:assigning-authority">
	<xsl:value-of select="$assigning-authority"/>
</xsl:template>

<xsl:template match="xdsdemo:assigning-authority-OID">
	<xsl:value-of select="$assigning-authority-OID"/>
</xsl:template>

<xsl:template match="xdsdemo:author-id">
	<xsl:value-of select="$author-id"/>
</xsl:template>

<xsl:template match="xdsdemo:author-family-name">
	<xsl:value-of select="$author-family-name"/>
</xsl:template>

<xsl:template match="xdsdemo:author-given-name">
	<xsl:value-of select="$author-given-name"/>
</xsl:template>

<xsl:template match="xdsdemo:author-assigning-authority-OID">
	<xsl:value-of select="$author-assigning-authority-OID"/>
</xsl:template>

<xsl:template match="xdsdemo:institution-name">
	<xsl:value-of select="$institution-name"/>
</xsl:template>

<xsl:template match="xdsdemo:exam-description">
	<xsl:value-of select="$exam-description"/>
</xsl:template>

<xsl:template match="xdsdemo:sop-instance-uid">
	<xsl:value-of select="$sop-instance-uid"/>
</xsl:template>

<xsl:template match="xdsdemo:document-id">
	<xsl:value-of select="$document-id"/>
</xsl:template>

<xsl:template match="xdsdemo:title">
	<xsl:value-of select="$title"/>
</xsl:template>

<xsl:template match="xdsdemo:date">
	<xsl:value-of select="$date"/>
</xsl:template>

<xsl:template match="xdsdemo:time">
	<xsl:value-of select="$time"/>
</xsl:template>

<xsl:template match="xdsdemo:street">
	<xsl:value-of select="$street"/>
</xsl:template>

<xsl:template match="xdsdemo:city">
	<xsl:value-of select="$city"/>
</xsl:template>

<xsl:template match="xdsdemo:state">
	<xsl:value-of select="$state"/>
</xsl:template>

<xsl:template match="xdsdemo:zip">
	<xsl:value-of select="$zip"/>
</xsl:template>

<xsl:template match="xdsdemo:country">
	<xsl:value-of select="$country"/>
</xsl:template>

<xsl:template match="xdsdemo:sex">
	<xsl:value-of select="$sex"/>
</xsl:template>

<xsl:template match="xdsdemo:birth-date">
	<xsl:value-of select="$birth-date"/>
</xsl:template>

</xsl:stylesheet>
