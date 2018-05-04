<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt">
    <sch:ns uri="http://www.tei-c.org/ns/1.0" prefix="tei"/>
    <sch:pattern>
        <sch:rule context="tei:keywords">
            
            <sch:let name="keywords-file" value="document('keywords.xml')"/>

            <sch:let name="cat-author" value="$keywords-file//tei:category[@xml:id='author']" />
            <sch:let name="cat-authorText" value="$keywords-file//tei:category[@xml:id='authorText']" />
            <sch:let name="cat-text" value="$keywords-file//tei:category[@xml:id='text']" />
            <sch:let name="cat-genre" value="$keywords-file//tei:category[@xml:id='text.genre']" />
            <sch:let name="cat-setting" value="$keywords-file//tei:category[@xml:id='text.setting']" />
            <sch:let name="cat-narration" value="$keywords-file//tei:category[@xml:id='text.narration']" />
            <sch:let name="cat-time" value="$keywords-file//tei:category[@xml:id='text.time']" />
            <sch:let name="cat-characters" value="$keywords-file//tei:category[@xml:id='text.characters']" />
            <sch:let name="cat-litHist" value="$keywords-file//tei:category[@xml:id='text.litHist']" />
            <sch:let name="cat-plot" value="$keywords-file//tei:category[@xml:id='text.plot']" />
            <sch:let name="cat-corpora" value="$keywords-file//tei:category[@xml:id='text.corpora']" />
            
            <!-- ### author ### -->
            <sch:assert test="tei:term[@type='author.continent'] = $cat-author/tei:category[@xml:id='author.continent']/tei:category/tei:catDesc">Metadata error: author.continent</sch:assert>
            <sch:assert test="tei:term[@type='author.country'] = $cat-author/tei:category[@xml:id='author.country']/tei:category/tei:catDesc">Metadata error: author.country</sch:assert>
            <sch:assert test="tei:term[@type='author.gender'] = $cat-author/tei:category[@xml:id='author.gender']/tei:category/tei:catDesc">Metadata error: author.gender</sch:assert>
            <sch:assert test="tei:term[@type='author.movement'] = $cat-author/tei:category[@xml:id='author.movement']/tei:category/tei:catDesc">Metadata error: author.movement</sch:assert>
            <sch:assert test="tei:term[@type='author.submovement'] = $cat-author/tei:category[@xml:id='author.submovement']/tei:category/tei:catDesc">Metadata error: author.submovement</sch:assert>
            <sch:assert test="tei:term[@type='author.nonNovelGenre'] = $cat-author/tei:category[@xml:id='author.nonNovelGenre']/tei:category/tei:catDesc">Metadata error: author.nonNovelGenre</sch:assert>
            <!--<sch:assert test="tei:term[@type='author.date.birth'] = matches(., '\d+')">Metadata error: author.nonNovelGenre</sch:assert>-->
            <!--<sch:assert test="matches(tei:term[@type='author.date.birth'], '\d+') ">Metadata error: author.nonNovelGenre</sch:assert>-->
            
            
            <!-- ### authorText ### -->
            <sch:assert test="tei:term[@type='authorText.relation'] = $cat-authorText/tei:category[@xml:id='authorText.relation']/tei:category/tei:catDesc">Metadata error: authorText.relation</sch:assert>
            
            <!-- ### text ### -->
            <sch:assert test="tei:term[@type='text.form'] = $cat-text/tei:category[@xml:id='text.form']/tei:category/tei:catDesc">Metadata error: text.form</sch:assert>
            <sch:assert test="tei:term[@type='text.publication'] = $cat-text/tei:category[@xml:id='text.publication']/tei:category/tei:catDesc">Metadata error: text.publication</sch:assert>
            <!--<sch:assert test="tei:term[@type='text.movement'] = $cat-text/tei:category[@xml:id='text.movement']/tei:category/tei:catDesc">Metadata error: text.movement</sch:assert>-->
            
            <!--<sch:assert test="tei:term[@type='text.form'] = $cat-text/tei:category/tei:catDesc">Metadata error: text.form</sch:assert>-->

            <!-- ### litHist ### -->
            <sch:assert test="tei:term[@type='text.litHist.mentioned'] = $cat-litHist/tei:category[@xml:id='text.litHist.mentioned']/tei:category/tei:catDesc">Metadata error: litHist.mentioned</sch:assert>
            
            
            <!-- ### genre ### -->
            <sch:assert test="tei:term[@type='text.genre'] = $cat-genre/tei:category/tei:catDesc">Metadata error: genre</sch:assert>
            
            <!--<sch:assert test="tei:term[@type='text.genre.subtitle'] = $cat-genre/tei:category[@xml:id='text.genre.subtitle']/tei:category/tei:catDesc">Metadata error: subtitle</sch:assert>-->
            <sch:assert test="tei:term[@type='text.genre.supergenre'] = $cat-genre/tei:category[@xml:id='text.genre.supergenre']/tei:category/tei:catDesc">Metadata error: supergenre</sch:assert>
            <sch:assert test="tei:term[@type='text.genre.subgenre.litHist'][@resp='#jct'] = $cat-genre//tei:category[@xml:id='text.genre.subgenre.litHist']/tei:category/tei:catDesc">Metadata error: text.genre.subgenre.litHist</sch:assert>

            <!-- ### narration ### -->
            <sch:assert test="tei:term[@type='text.narration.narrator'] = $cat-narration/tei:category[@xml:id='text.narration.narrator']/tei:category/tei:catDesc">Metadata error: narration.narrator</sch:assert>

            <!-- ### setting ### -->
            <sch:assert test="tei:term[@type='text.setting.continent'] = $cat-setting/tei:category[@xml:id='text.setting.continent']/tei:category/tei:catDesc">Metadata error: setting.continent</sch:assert>
            <sch:assert test="tei:term[@type='text.setting.settlement.type'] = $cat-setting/tei:category[@xml:id='text.setting.settlement.type']/tei:category/tei:catDesc">Metadata error: text.setting.settlement.type</sch:assert>
            <sch:assert test="tei:term[@type='text.setting.settlement.represented.exist'] = $cat-setting/tei:category[@xml:id='text.setting.settlement.represented.exist']/tei:category/tei:catDesc">Metadata error: setting.name.represented.exist</sch:assert>
            
            <!-- ### time ### -->
            <sch:assert test="tei:term[@type='text.time.period'] = $cat-time/tei:category[@xml:id='text.time.period']/tei:category/tei:catDesc">Metadata error: time.period</sch:assert>

            <!-- ### characters ### -->
            <sch:assert test="tei:term[@type='text.characters.protagonist.gender'] = $cat-characters//tei:category[@xml:id='text.characters.protagonist.gender']/tei:category/tei:catDesc">Metadata error: characters.protagonist.gender</sch:assert>
            <sch:assert test="tei:term[@type='text.characters.protagonist.age'] = $cat-characters//tei:category[@xml:id='text.characters.protagonist.age']/tei:category/tei:catDesc">Metadata error: characters.protagonist.age</sch:assert>
            <sch:assert test="tei:term[@type='text.characters.protagonist.socLevel'] = $cat-characters//tei:category[@xml:id='text.characters.protagonist.socLevel']/tei:category/tei:catDesc">Metadata error: characters.protagonist.socLevel</sch:assert>

            <!-- ### plot ### -->
            <sch:assert test="tei:term[@type='text.plot.end'] = $cat-plot/tei:category[@xml:id='text.plot.end']/tei:category/tei:catDesc">Metadata error: plot.end</sch:assert>
            <sch:assert test="tei:term[@type='text.plot.representation'] = $cat-plot/tei:category[@xml:id='text.plot.representation']/tei:category/tei:catDesc">Metadata error: plot.representation</sch:assert>

            <!-- ### corpora ### -->

            <sch:assert test="tei:term[@type='text.corpora.CoNSSA'] = $cat-corpora/tei:category[@xml:id='text.corpora.CoNSSA']/tei:category/tei:catDesc">Metadata error: corpora.CoNSSA</sch:assert>
            <sch:assert test="tei:term[@type='text.corpora.CoNSSA.canon'] = $cat-corpora/tei:category[@xml:id='text.corpora.CoNSSA.canon']/tei:category/tei:catDesc">Metadata error: corpora.CoNSSA.canon</sch:assert>

        </sch:rule>
    </sch:pattern>
</sch:schema>