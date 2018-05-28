<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt">
    <sch:ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"/>
    <sch:pattern>
        <sch:rule context="tei:keywords">
            
            <sch:let name="keywords-file" value="document('keywords.xml')"/>

            <sch:let name="cat-author" value="$keywords-file//tei:category[@xml:id='author']" />
            <sch:let name="cat-text" value="$keywords-file//tei:category[@xml:id='text']" />
            <sch:let name="cat-genre" value="$keywords-file//tei:category[@xml:id='text.genre']" />

            <!-- ### author ### -->
            <sch:assert test="tei:term[@type='author.continent'] = $cat-author/tei:category[@xml:id='author.continent']/tei:category/tei:catDesc">Metadata error: author.continent</sch:assert>
            <sch:assert test="tei:term[@type='author.country'] = $cat-author/tei:category[@xml:id='author.country']/tei:category/tei:catDesc">Metadata error: author.country</sch:assert>
            <sch:assert test="tei:term[@type='author.gender'] = $cat-author/tei:category[@xml:id='author.gender']/tei:category/tei:catDesc">Metadata error: author.gender</sch:assert>
            <sch:assert test="tei:term[@type='author.movement'] = $cat-author/tei:category[@xml:id='author.movement']/tei:category/tei:catDesc">Metadata error: author.movement</sch:assert>
            <sch:assert test="tei:term[@type='author.submovement'] = $cat-author/tei:category[@xml:id='author.submovement']/tei:category/tei:catDesc">Metadata error: author.submovement</sch:assert>
            <sch:assert test="tei:term[@type='author.nonNovelGenre'] = $cat-author/tei:category[@xml:id='author.nonNovelGenre']/tei:category/tei:catDesc">Metadata error: author.nonNovelGenre</sch:assert>

            <!-- ### text ### -->
            <sch:assert test="tei:term[@type='text.form'] = $cat-text/tei:category[@xml:id='text.form']/tei:category/tei:catDesc">Metadata error: text.form</sch:assert>
            <sch:assert test="tei:term[@type='text.publication'] = $cat-text/tei:category[@xml:id='text.publication']/tei:category/tei:catDesc">Metadata error: text.publication</sch:assert>
            
            
            <!-- ### genre ### -->
            <sch:assert test="tei:term[@type='text.genre'] = $cat-genre/tei:category/tei:catDesc">Metadata error: genre</sch:assert>
            <sch:assert test="tei:term[@type='text.genre.supergenre'] = $cat-genre/tei:category[@xml:id='text.genre.supergenre']/tei:category/tei:catDesc">Metadata error: supergenre</sch:assert>


        </sch:rule>
    </sch:pattern>
</sch:schema>