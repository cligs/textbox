<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt">
    <sch:ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"/>
    <sch:pattern>
        <sch:rule context="tei:keywords">
            
            <sch:let name="keywords-file" value="document('keywords.xml')"/>

            <sch:let name="cat-text" value="$keywords-file//tei:category[@xml:id='text']" />
            <sch:let name="cat-genre" value="$keywords-file//tei:category[@xml:id='text.genre']" />
            
            <!-- ### text ### -->
            <sch:assert test="tei:term[@type='text.form'] = $cat-text/tei:category[@xml:id='text.form']/tei:category/tei:catDesc">Metadata error: text.form</sch:assert>
            <sch:assert test="tei:term[@type='text.structure'] = $cat-text/tei:category[@xml:id='text.structure']/tei:category/tei:catDesc">Metadata error: text.structure</sch:assert>
            
            <!-- ### genre ### -->
            <sch:assert test="tei:term[@type='text.genre'] = $cat-genre/tei:category/tei:catDesc">Metadata error: genre</sch:assert>
            <sch:assert test="tei:term[@type='text.genre.subgenre'] = $cat-genre/tei:category[@xml:id='text.genre.subgenre']/tei:category/tei:catDesc">Metadata error: subgenre</sch:assert>

        </sch:rule>
    </sch:pattern>
</sch:schema>