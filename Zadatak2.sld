<?xml version="1.0" encoding="ISO-8859-1"?>
    <StyledLayerDescriptor version="1.0.0" xsi:schemaLocation="http://www.opengis.net/sld StyledLayerDescriptor.xsd" xmlns="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance">
        <!-- a Named Layer is the basic building block of an SLD document -->
        <NamedLayer>
            <Name>default_point</Name>
            <UserStyle>
                <!-- Styles can have names, titles and abstracts -->
                <Title>Default Point</Title>
                <Abstract>A sample style that draws a point</Abstract>
                <!-- FeatureTypeStyles describe how to render different features -->
                <!-- A FeatureTypeStyle for rendering points -->
                <FeatureTypeStyle>
                    <Rule>
                        <Name>rule1</Name>
                        <Title>Manje od 2mil</Title>
                        <Abstract>Tacka velicine 8</Abstract>

                        <ogc:Filter>
                            <ogc:PropertyIsLessThan>
                                <ogc:PropertyName>CAP_POP</ogc:PropertyName>
                                <ogc:Literal>2000000</ogc:Literal>
                            </ogc:PropertyIsLessThan>
                        </ogc:Filter>
						
                        <PointSymbolizer>
                            <Graphic>
                                <Mark>
                                    <WellKnownName>square</WellKnownName>
                                    <Fill>
                                        <CssParameter name="fill">#FF0000</CssParameter>
                                    </Fill>
                                </Mark>
                                <Size>8</Size>
                            </Graphic>
                        </PointSymbolizer>
                    </Rule>

                    <Rule>
                        <Name>rule2</Name>
                        <Title>Od 2mil do 10mil</Title>
                        <Abstract>Tacka velicine 12</Abstract>

                        <ogc:Filter>
                            <ogc:And>
                                <ogc:PropertyIsGreaterThanOrEqualTo>
                                    <ogc:PropertyName>CAP_POP</ogc:PropertyName>
                                    <ogc:Literal>2000000</ogc:Literal>
                                </ogc:PropertyIsGreaterThanOrEqualTo>

                                <ogc:PropertyIsLessThan>
                                    <ogc:PropertyName>CAP_POP</ogc:PropertyName>
                                    <ogc:Literal>10000000</ogc:Literal>
                                </ogc:PropertyIsLessThan>
                            </ogc:And>
                        </ogc:Filter>
						
                        <PointSymbolizer>
                            <Graphic>
                                <Mark>
                                    <WellKnownName>square</WellKnownName>
                                    <Fill>
                                        <CssParameter name="fill">#FF00FF</CssParameter>
                                    </Fill>
                                </Mark>
                                <Size>12</Size>
                            </Graphic>
                        </PointSymbolizer>
                    </Rule>

                    <Rule>
                        <Name>rule3</Name>
                        <Title>Vise od 10mil</Title>
                        <Abstract>Tacka velicine 16</Abstract>

                        <ogc:Filter>
                            <ogc:PropertyIsGreaterThan>
                                <ogc:PropertyName>CAP_POP</ogc:PropertyName>
                                <ogc:Literal>10000000</ogc:Literal>
                            </ogc:PropertyIsGreaterThan>
                        </ogc:Filter>
						

                        <PointSymbolizer>
                            <Graphic>
                                <Mark>
                                    <WellKnownName>square</WellKnownName>
                                    <Fill>
                                        <CssParameter name="fill">#FFFF00</CssParameter>
                                    </Fill>
                                </Mark>
                                <Size>16</Size>
                            </Graphic>
                        </PointSymbolizer>
                    </Rule>

                    <Rule>
                        <Name>rule4</Name>
                        <Title>Razmera</Title>
                        <Abstract>Tekst</Abstract>

						<MaxScaleDenominator>10000000</MaxScaleDenominator>
						
					    <TextSymbolizer>
                            <Label>
                                <ogc:PropertyName>CAPITAL</ogc:PropertyName>
                            </Label>
                            <Fill>
                                <CssParameter name="fill">#000000</CssParameter>
                            </Fill>
                        </TextSymbolizer>
                    </Rule>
					
					

                </FeatureTypeStyle>
            </UserStyle>
        </NamedLayer>
    </StyledLayerDescriptor>