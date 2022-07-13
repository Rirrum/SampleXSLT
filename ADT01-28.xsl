<xsl:stylesheet version="3.0" 
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xpath="http://www.w3.org/2005/xpath-functions"
    xmlns:hl7="urn:hl7-org:v2xml">
    <xsl:output method="text" encoding="UTF-8"/>

    <xsl:template match="/hl7:ADT_A01">
        <!-- CONVERT INPUT TO XML FOR JSON -->
        <xsl:variable name="xml">
          
          <xpath:map>
            
            <xpath:string key="resourceType">Bundle</xpath:string>
            <xpath:string key="type">batch</xpath:string>
            <xpath:string key="timestamp">temporary-time</xpath:string>
            <xpath:map key = "identifier">
              <xpath:string key="value">
                <xsl:value-of select="./hl7:MSH/hl7:MSH.10"/>
              </xpath:string>
            </xpath:map>
            <xpath:string key="id">some-complexity</xpath:string>
              <xpath:array key="entry">
                <xsl:for-each select="./hl7:MSH"> <!--></-->
                <!-->Message Header</-->
                <xpath:map>
                  <xpath:string key="fullUrl">some-complexity</xpath:string>
                  <xpath:map key = "resource">
                      <xpath:string key="resourceType">MessageHeader</xpath:string>
                      <xpath:string key="id">some-complexity</xpath:string>
                      <xpath:map key="source">
                          <xpath:string key="name">
                            <xsl:value-of select="./hl7:MSH.3/hl7:HD.1"/>
                          </xpath:string>
                          <xpath:map key="_endpoint">
                              <xpath:array key="extension">
                                  <xpath:map>
                                    <xpath:string key="url">some-url</xpath:string>
                                    <xpath:string key="valueCode">??</xpath:string>
                                  </xpath:map>
                                </xpath:array>
                            </xpath:map>
                        </xpath:map>
                      <xpath:array key="destination">
                          <xpath:map>
                            <xpath:string key="name">
                              <xsl:value-of select="./hl7:MSH.5/hl7:HD.1"/>
                            </xpath:string>
                            <xpath:map key="_endpoint">
                                <xpath:array key="extension">
                                    <xpath:map>
                                      <xpath:string key = "url">some-url</xpath:string>
                                      <xpath:string key="valueCode">??</xpath:string>
                                    </xpath:map>
                                  </xpath:array>
                              </xpath:map>
                            <xpath:map key="receiver">
                              <xpath:string key="reference">some-complexity</xpath:string>
                            </xpath:map>
                          </xpath:map>
                        </xpath:array>
                      <xpath:map key="meta">
                          <xpath:array key="security">
                              <xpath:map>
                                <xpath:string key="display">
                                  <xsl:value-of select="./hl7:MSH.8"/>
                                </xpath:string>
                              </xpath:map>
                            </xpath:array>
                          <xpath:array key="tag">
                              <xpath:map>
                                <xpath:string key="code">
                                  <xsl:value-of select="./hl7:MSH.11/hl7:PT.1"/>
                                </xpath:string>
                                <xpath:string key="system">some-url</xpath:string>
                              </xpath:map>
                            </xpath:array>
                        </xpath:map>
                      <xpath:map key="eventCoding">
                          <xpath:string key="code">
                            <xsl:value-of select="./hl7:MSH.9/hl7:MSG.2"/>
                          </xpath:string>
                          <xpath:string key="system">some-url</xpath:string>
                          <xpath:string key="display">
                            <xsl:value-of select="./hl7:MSH.9/hl7:MSG.1"/>^<xsl:value-of select="./hl7:MSH.9/hl7:MSG.2"/>^<xsl:value-of select="./hl7:MSH.9/hl7:MSG.3"/>
                          </xpath:string>
                        </xpath:map>
                      <xpath:map key="sender">
                          <xpath:string key="reference">some-complexity</xpath:string>
                        </xpath:map>
                    </xpath:map>
                  <xpath:map key="request">
                      <xpath:string key="method">??</xpath:string>
                      <xpath:string key="url">some-complexity</xpath:string>
                    </xpath:map>
                </xpath:map>
                <!-->Provenance</-->
                <xpath:map>
                  <xpath:string key="fullUrl">some-complexity</xpath:string>
                  <xpath:map key="resource">
                    <xpath:string key="resourceType">Provenance</xpath:string>
                    <xpath:string key="id">some-complexity</xpath:string>
                    <xpath:map key="text">
                      <xpath:string key="status">generated??</xpath:string>
                      <xpath:string key="div">??</xpath:string>
                    </xpath:map>
                    <xpath:string key="occurredDateTime">some-complexity</xpath:string>
                    <xpath:string key="recorded">some-complexity</xpath:string>
                    <xpath:array key="agent">
                      <xpath:map>
                        <xpath:map key="type">
                          <xpath:array key="coding">
                            <xpath:map>
                              <xpath:string key="code">author</xpath:string>
                              <xpath:string key="system">some-url</xpath:string>
                            </xpath:map>
                          </xpath:array>
                        </xpath:map>
                        <xpath:map key="who">
                          <xpath:string key="reference">some-complexity</xpath:string>
                        </xpath:map>
                      </xpath:map>
                    </xpath:array>
                    <xpath:map key="activity">
                      <xpath:array key="coding">
                        <xpath:map>
                          <xpath:string key="display">
                            <xsl:value-of select="./hl7:MSH.9/hl7:MSG.1"/>^<xsl:value-of select="./hl7:MSH.9/hl7:MSG.2"/>^<xsl:value-of select="./hl7:MSH.9/hl7:MSG.3"/>
                          </xpath:string>
                        </xpath:map>
                      </xpath:array>
                    </xpath:map>
                    <xpath:array key="target">
                      <xpath:map>
                        <xpath:string key="reference">some-complexity</xpath:string>
                      </xpath:map>
                    </xpath:array>
                  </xpath:map>
                  <xpath:map key="request">
                    <xpath:string key="method">PUT(??)</xpath:string>
                    <xpath:string key="url">some-complexity</xpath:string>
                  </xpath:map>
                </xpath:map>
                <!-->Organization</-->
                <xpath:map>
                  <xpath:string key="fullUrl">some-complexity</xpath:string>
                  <xpath:map key="resource">
                    <xpath:string key="resourceType">Organization</xpath:string>
                    <xpath:string key="id">some-complexity</xpath:string>
                    <xpath:array key="identifier">
                      <xpath:map>
                        <xpath:string key="value">
                          <xsl:value-of select="./hl7:MSH.6/hl7:HD.1"/>
                        </xpath:string>
                        <xpath:string key="system">some-url</xpath:string>
                      </xpath:map>
                    </xpath:array>
                  </xpath:map>
                  <xpath:map key="request">
                    <xpath:string key="method">PUT</xpath:string>
                    <xpath:string key="url">some-complexity</xpath:string>
                  </xpath:map>
                </xpath:map>
                </xsl:for-each>
                <xsl:for-each select="./hl7:PID">
                <!-->Patient Info</-->
                <xpath:map>
                  <xpath:string key="fullUrl">some-complexity</xpath:string>
                  <xpath:map key="resource">
                    <xpath:string key="resourceType">Patient</xpath:string>
                    <xpath:string key="id">some-complexity</xpath:string>
                    <xpath:array key="identifier">
                      <!-->Medical record number</-->
                      <xpath:map>
                        <xpath:string key="value">
                          <xsl:value-of select="./hl7:PID.3/hl7:CX.1"/><!--> Issue here with multiple instances</-->
                        </xpath:string>
                        <xpath:map key="type">
                          <xpath:array key="coding">
                            <xpath:map>
                              <xpath:string key="code">
                                <xsl:value-of select="./hl7:PID.3/hl7:CX.5"/><!--> Issue here with multiple instances</-->
                              </xpath:string>
                              <xpath:string key="system">some-url</xpath:string>
                              <xpath:string key="display">??</xpath:string>
                            </xpath:map>
                          </xpath:array>
                        </xpath:map>
                        <xpath:string key="system">some-url</xpath:string>
                      </xpath:map>
                      <!-->Social Security Number</-->
                      <xpath:map>
                        <xpath:string key="value">
                          <xsl:value-of select="./hl7:PID.3/hl7:CX.1"/><!--> Issue here with multiple instances</-->
                        </xpath:string>
                        <xpath:map key="type">
                          <xpath:array key="coding">
                            <xpath:map>
                              <xpath:string key="code">
                                <xsl:value-of select="./hl7:PID.3/hl7:CX.5"/><!--> Issue here with multiple instances</-->
                              </xpath:string>
                              <xpath:string key="system">some-url</xpath:string>
                              <xpath:string key="display">Social Security Number</xpath:string><!-->Seems to be related to the 'code'</-->
                            </xpath:map>
                          </xpath:array>
                        </xpath:map>
                        <xpath:string key="system">some-url</xpath:string>
                      </xpath:map>
                      <!-->Code:SB?</-->
                      <xpath:map>
                        <xpath:string key="value">
                          <xsl:value-of select="./hl7:PID.19"/>
                        </xpath:string>
                        <xpath:map key="type">
                          <xpath:array key="coding">
                            <xpath:map>
                              <xpath:string key="code">SB<!-->Unknown where from</--></xpath:string>
                              <xpath:string key="system">some-url</xpath:string>
                              <xpath:string key="display">Social Security Number</xpath:string><!-->Seems to be related to the 'code'</-->
                            </xpath:map>
                          </xpath:array>
                        </xpath:map>
                        <xpath:string key="system">some-url</xpath:string>
                      </xpath:map>
                      <!-->Code:DL?</-->
                      <xpath:map>
                        <xpath:string key="value">
                          <xsl:value-of select="./hl7:PID.20"/>
                        </xpath:string>
                        <xpath:map key="type">
                          <xpath:array key="coding">
                            <xpath:map>
                              <xpath:string key="code">DL<!-->Unknown where from</--></xpath:string>
                            </xpath:map>
                          </xpath:array>
                        </xpath:map>
                        <xpath:string key="system">some-url</xpath:string>
                      </xpath:map>
                      
                    </xpath:array>
                    <xpath:array key="name">
                      <xpath:map>
                        <xpath:string key="family">
                          <xsl:value-of select="./hl7:PID.5/hl7:XPN.1/hl7:FN.1"/>
                        </xpath:string>
                        <xpath:array key="given">
                          <xpath:string><xsl:value-of select="./hl7:PID.5/hl7:XPN.2"/></xpath:string>
                          <xpath:string><xsl:value-of select="./hl7:PID.5/hl7:XPN.3"/></xpath:string>
                        </xpath:array>
                        <xpath:array key="suffix">
                          <xpath:string><xsl:value-of select="./hl7:PID.5/hl7:XPN.4"/></xpath:string>
                        </xpath:array>
                      </xpath:map>
                    </xpath:array>
                    <xpath:string key="birthDate">
                      <xsl:value-of select="./hl7:PID.7"/><!-->Needs a complexity</-->
                    </xpath:string>
                    <xpath:string key="gender">male</xpath:string><!-->Unsure where it got this</-->
                    <xpath:array key="address">
                      <xpath:map>
                        <xpath:array key="line">
                          <xpath:string><xsl:value-of select="./hl7:PID.11/hl7:XAD.1/hl7:SAD.1"/></xpath:string>
                        </xpath:array>
                        <xpath:string key="city">
                          <xsl:value-of select="./hl7:PID.11/hl7:XAD.3"/>
                        </xpath:string>
                        <xpath:string key="state">
                          <xsl:value-of select="./hl7:PID.11/hl7:XAD.4"/>
                        </xpath:string>
                        <xpath:string key="postalCode">
                          <xsl:value-of select="./hl7:PID.11/hl7:XAD.5"/>
                        </xpath:string>
                      </xpath:map>
                      <xpath:map>
                        <xpath:string key="district">
                          <xsl:value-of select="./hl7:PID.12"/>
                        </xpath:string>
                      </xpath:map>
                    </xpath:array>
                    <xpath:array key="telecom">
                      <xpath:map>
                        <xpath:string key="value">
                          <xsl:value-of select="./hl7:PID.13/hl7:XTN.1"/>
                        </xpath:string>
                        <xpath:string key="use">home</xpath:string><!-->Might be default, unsure where 'home' came from</-->
                      </xpath:map>
                      <xpath:map>
                        <xpath:string key="value">
                          <xsl:value-of select="./hl7:PID.14/hl7:XTN.1"/>
                        </xpath:string>
                        <xpath:string key="use">work</xpath:string><!-->Might be default, unsure where 'home'work' came from</-->
                      </xpath:map>
                    </xpath:array>
                    <xpath:map key="maritalStatus">
                      <xpath:array key="coding">
                        <xpath:map>
                          <xpath:string key="code">
                            <xsl:value-of select="./hl7:PID.16/hl7:CWE.1"/><!-->??</-->
                          </xpath:string>
                          <xpath:string key="display">Never Married</xpath:string>
                          <xpath:string key="system">some-url</xpath:string>
                        </xpath:map>
                      </xpath:array>
                    </xpath:map>
                    <xpath:array key="extension">
                      <xpath:map>
                        <xpath:string key="url">some-url</xpath:string>
                        <xpath:array key="extension">
                          <xpath:map>
                            <xpath:string key="url">??</xpath:string>
                            <xpath:map key="valueCoding">
                              <xpath:string key="code">
                                <xsl:value-of select="./hl7:PID.10/hl7:CWE.1"/>
                              </xpath:string>
                              <xpath:string key="display">C</xpath:string>
                            </xpath:map>
                          </xpath:map>
                          <xpath:map>
                            <xpath:string key="url">text??</xpath:string>
                            <xpath:string key="valueString">C??</xpath:string>
                          </xpath:map>
                        </xpath:array>
                      </xpath:map>
                    </xpath:array>
                    <xpath:array key="contact">
                      <xpath:map>
                        <xpath:map key="name">
                          <xpath:string key="family">
                            <xsl:value-of select="/hl7:ADT_A01/hl7:NK1/hl7:NK1.2/hl7:XPN.1/hl7:FN.1"/>
                          </xpath:string>
                          <xpath:array key="given">
                            <xpath:string>
                              <xsl:value-of select="/hl7:ADT_A01/hl7:NK1/hl7:NK1.2/hl7:XPN.2"/>
                            </xpath:string>
                            <xpath:string>
                              <xsl:value-of select="/hl7:ADT_A01/hl7:NK1/hl7:NK1.2/hl7:XPN.3"/>
                            </xpath:string>
                          </xpath:array>
                        </xpath:map>
                        <xpath:array key="relationship">
                          <xpath:map>
                            <xpath:array key="coding">
                              <xpath:map>
                                <xpath:string key="code">
                                  <xsl:value-of select="/hl7:ADT_A01/hl7:NK1/hl7:NK1.7/hl7:CWE.1"/>
                                </xpath:string>
                                <xpath:string key="display">
                                  <xsl:value-of select="/hl7:ADT_A01/hl7:NK1/hl7:NK1.7/hl7:CWE.2"/>
                                </xpath:string>
                              </xpath:map>
                            </xpath:array>
                          </xpath:map>
                        </xpath:array>
                      </xpath:map>
                    </xpath:array>
                  </xpath:map>
                  <xpath:map key="request">
                    <xpath:string key="method">PUT</xpath:string>
                    <xpath:string key="url">some-complexity</xpath:string>
                  </xpath:map>
                </xpath:map>
                <!-->Account</-->
                <xpath:map>
                  <xpath:string key="fullUrl">some-complexity</xpath:string>
                  <xpath:map key="resource">
                    <xpath:string key="resourceType">Account</xpath:string>
                    <xpath:string key="id">some-complexity</xpath:string>
                    <xpath:array key="identifier">
                      <xpath:map>
                        <xpath:string key="value">
                          <xsl:value-of select="./hl7:PID.18/hl7:CX.1"/>
                        </xpath:string>
                        <xpath:map key="type">
                          <xpath:array key="coding">
                            <xpath:map>
                              <xpath:string key="code">
                                <xsl:value-of select="./hl7:PID.18/hl7:CX.5"/>
                              </xpath:string>
                              <xpath:string key="system">some-url</xpath:string>
                              <xpath:string key="display">Account number</xpath:string>
                            </xpath:map>
                          </xpath:array>
                        </xpath:map>
                        <xpath:string key="system">some-url</xpath:string>
                      </xpath:map>
                    </xpath:array>
                    <xpath:string key="status">active??</xpath:string>
                    <xpath:array key="subject">
                      <xpath:map>
                        <xpath:string key="reference">some-complexity</xpath:string>
                      </xpath:map>
                    </xpath:array>
                  </xpath:map>
                  <xpath:map key="request">
                    <xpath:string key="method">PUT</xpath:string>
                    <xpath:string key="url">some-complexity</xpath:string>
                  </xpath:map>
                </xpath:map>
                <!-->Practitioner</-->
                </xsl:for-each>
                <xsl:for-each select="./hl7:PV1">
                <xpath:map>
                    <xpath:string key="fullUrl">some-url</xpath:string>
                    <xpath:map key="resource">
                        <xpath:string key="resourceType">Practitioner</xpath:string>
                        <xpath:string key="id">some-complexity</xpath:string>
                        <xpath:array key="identifier">
                            <xpath:map>
                                <xpath:string key="value">
                                    <xsl:value-of select="./hl7:PV1.7/hl7:XCN.1"/>
                                </xpath:string>
                            </xpath:map>
                        </xpath:array>
                        <xpath:array key="name">
                            <xpath:map>
                                <xpath:string key="family">
                                    <xsl:value-of select="./hl7:PV1.7/hl7:XCN.2/hl7:FN.1"/>
                                </xpath:string>
                                <xpath:array key="given">
                                    <xpath:string><xsl:value-of select="./hl7:PV1.7/hl7:XCN.3"/></xpath:string>
                                    <xpath:string><xsl:value-of select="./hl7:PV1.7/hl7:XCN.4"/></xpath:string>
                                </xpath:array>
                            </xpath:map>
                        </xpath:array>
                    </xpath:map>
                    <xpath:map key="request">
                        <xpath:string key="method">PUT</xpath:string>
                        <xpath:string key="url">some-complexity</xpath:string>
                    </xpath:map>
                </xpath:map>
                <!-->Location</-->
                <xpath:map>
                    <xpath:string key="fullUrl">some-complexity</xpath:string>
                    <xpath:map key="resource">
                        <xpath:string key="resourceType">Location</xpath:string>
                        <xpath:string key="id">some-complexity</xpath:string>
                        <xpath:string key="name"><xsl:value-of select="./hl7:PV1.3/hl7:PL.1/hl7:HD.1"/>??</xpath:string>
                        <xpath:string key="mode">instance??</xpath:string>
                        <xpath:string key="description"><xsl:value-of select="./hl7:PV1.3/hl7:PL.1/hl7:HD.1"/>--<xsl:value-of select="./hl7:PV1.3/hl7:PL.2/hl7:HD.1"/>--<xsl:value-of select="./hl7:PV1.3/hl7:PL.3/hl7:HD.1"/></xpath:string>
                        <xpath:map key="physicalType"> 
                            <xpath:array key="coding">
                                <xpath:map>
                                    <xpath:string key="system">some-url</xpath:string>
                                    <xpath:string key="code">1v1??</xpath:string>
                                </xpath:map>
                            </xpath:array>
                        </xpath:map>
                    </xpath:map>
                    <xpath:map key="request"> 
                        <xpath:string key="method">PUT</xpath:string>
                        <xpath:string key="url">some-complexity</xpath:string>
                    </xpath:map>
                </xpath:map>
                <!-->Location</-->
                <xpath:map>
                    <xpath:string key="fullUrl">some-url</xpath:string>
                    <xpath:map key="resource">
                        <xpath:string key="resourceType">Location</xpath:string>
                        <xpath:string key="id">some-complexity</xpath:string>
                        <xpath:map key="partOf"> 
                            <xpath:string key="reference">some-complexity</xpath:string>
                        </xpath:map>
                        <xpath:string key="name"><xsl:value-of select="./hl7:PV1.3/hl7:PL.2/hl7:HD.1"/>??</xpath:string>
                        <xpath:string key="mode">instance??</xpath:string>
                        <xpath:string key="description"><xsl:value-of select="./hl7:PV1.3/hl7:PL.1/hl7:HD.1"/>--<xsl:value-of select="./hl7:PV1.3/hl7:PL.2/hl7:HD.1"/>--<xsl:value-of select="./hl7:PV1.3/hl7:PL.3/hl7:HD.1"/></xpath:string>
                        <xpath:map key="physicalType"> 
                            <xpath:array key="coding">
                                <xpath:map>
                                    <xpath:string key="system">some-url</xpath:string>
                                    <xpath:string key="code">ro??</xpath:string>
                                </xpath:map>
                            </xpath:array>
                        </xpath:map>
                    </xpath:map>
                    <xpath:map key="request"> 
                        <xpath:string key="method">PUT</xpath:string>
                        <xpath:string key="url">some-complexity</xpath:string>
                    </xpath:map>
                </xpath:map>
                <!-->Location</-->
                <xpath:map>
                    <xpath:string key="fullUrl">some-url</xpath:string>
                    <xpath:map key="resource">
                        <xpath:string key="resourceType">Location</xpath:string>
                        <xpath:string key="id">some-complexity</xpath:string>
                        <xpath:map key="partOf"> 
                            <xpath:string key="reference">some-complexity</xpath:string>
                        </xpath:map>
                        <xpath:string key="name"><xsl:value-of select="./hl7:PV1.3/hl7:PL.3/hl7:HD.1"/>??</xpath:string>
                        <xpath:string key="mode">instance??</xpath:string>
                        <xpath:string key="description"><xsl:value-of select="./hl7:PV1.3/hl7:PL.1/hl7:HD.1"/>--<xsl:value-of select="./hl7:PV1.3/hl7:PL.2/hl7:HD.1"/>--<xsl:value-of select="./hl7:PV1.3/hl7:PL.3/hl7:HD.1"/></xpath:string>
                        <xpath:map key="physicalType"> 
                            <xpath:array key="coding">
                                <xpath:map>
                                    <xpath:string key="system">some-url</xpath:string>
                                    <xpath:string key="code">bd??</xpath:string>
                                </xpath:map>
                            </xpath:array>
                        </xpath:map>
                    </xpath:map>
                    <xpath:map key="request"> 
                        <xpath:string key="method">PUT</xpath:string>
                        <xpath:string key="url">some-complexity</xpath:string>
                    </xpath:map>
                </xpath:map>
                <!-->Encounter</-->
                <xpath:map>
                    <xpath:string key="fullUrl">some-complexity</xpath:string>
                    <xpath:map key="resource">
                        <xpath:string key="resourceType">Encounter</xpath:string>
                        <xpath:string key="id">some-complexity</xpath:string>
                        <xpath:map key="class">
                            <xpath:string key="code">IMP??</xpath:string>
                            <xpath:string key="display">inpatient encounter</xpath:string>
                            <xpath:string key="system">some-url</xpath:string>
                        </xpath:map>
                        <xpath:string key="status">in-progress??</xpath:string>
                        <xpath:array key="location">
                            <xpath:map>
                                <xpath:string key="status">active</xpath:string>
                                <xpath:map key="location"> 
                                    <xpath:string key="reference">some-complexity</xpath:string>
                                </xpath:map>
                            </xpath:map>
                        </xpath:array>
                        <xpath:map key="hospitalization"> 
                            <xpath:map key="admitSource"> 
                                <xpath:array key="coding"> 
                                    <xpath:map>
                                        <xpath:string key="code"> 
                                            <xsl:value-of select="./hl7:PV1.14/hl7:CWE.1"/>
                                        </xpath:string>
                                    </xpath:map>
                                </xpath:array>
                            </xpath:map>
                        </xpath:map>
                        <xpath:array key="participant"> 
                            <xpath:map>
                                <xpath:array key="type"> 
                                    <xpath:map>
                                        <xpath:array key="coding"> 
                                            <xpath:map>
                                                <xpath:string key="code">ATND??</xpath:string>
                                                <xpath:string key="system">some-url</xpath:string>
                                                <xpath:string key="display">attender</xpath:string>
                                            </xpath:map>
                                        </xpath:array>
                                    </xpath:map>
                                </xpath:array>
                                <xpath:map key="individual"> 
                                    <xpath:string key="reference">some-complexity</xpath:string>
                                </xpath:map>
                            </xpath:map>
                        </xpath:array>
                        <xpath:map key="serviceType"> 
                            <xpath:array key="coding"> 
                                <xpath:map>
                                    <xpath:string key="code"> 
                                        <xsl:value-of select="./hl7:PV1.10/hl7:CWE.1"/>
                                    </xpath:string>
                                </xpath:map>
                            </xpath:array>
                        </xpath:map>
                        <xpath:map key="text"> 
                            <xpath:string key="status">generated??</xpath:string>
                            <xpath:string key="div">some-complexity-div??</xpath:string>
                        </xpath:map>
                        <xpath:array key="account"> 
                            <xpath:map>
                                <xpath:string key="reference">some-complexity</xpath:string>
                            </xpath:map>
                        </xpath:array>
                        <xpath:map key="subject">
                            <xpath:string key="reference">some-complexity</xpath:string>
                        </xpath:map>
                    </xpath:map>
                    <xpath:map key="request"> 
                        <xpath:string key="method">PUT</xpath:string>
                        <xpath:string key="url">some-complexity</xpath:string>
                    </xpath:map>
                </xpath:map>
                <!-->Provenance</-->
                <xpath:map>
                    <xpath:string key="fullUrl">some-complexity</xpath:string>
                    <xpath:map key="resource"> 
                        <xpath:string key="resourceType">Provenance</xpath:string>
                        <xpath:string key="id">some-complexity</xpath:string>
                        <xpath:string key="recorded"><xsl:value-of select="/hl7:ADT_A01/hl7:EVN/hl7:EVN.2"/>some-complexity</xpath:string>
                        <xpath:map key="activity"> 
                            <xpath:string key="text"> 
                                <xsl:value-of select="/hl7:ADT_A01/hl7:MSH/hl7:MSH.9/hl7:MSG.1"/>^<xsl:value-of select="/hl7:ADT_A01/hl7:MSH/hl7:MSH.9/hl7:MSG.2"/>^<xsl:value-of select="/hl7:ADT_A01/hl7:MSH/hl7:MSH.9/hl7:MSG.3"/>
                            </xpath:string>
                        </xpath:map>
                        <xpath:array key="target">
                          <xpath:map>
                            <xpath:string key="reference">some-complexity</xpath:string>
                          </xpath:map>
                        </xpath:array>
                    </xpath:map>
                    <xpath:map key="request">
                      <xpath:string key="method">PUT</xpath:string>
                      <xpath:string key="url">some-complexity</xpath:string>
                    </xpath:map>
                </xpath:map>
                </xsl:for-each>
                <xsl:for-each select="./hl7:NK1">
                <!-->RelatedPerson</-->
                <xpath:map>
                  <xpath:string key="fullUrl">some-complexity</xpath:string>
                  <xpath:map key="resource">
                    <xpath:string key="resourceType">RelatedPerson</xpath:string>
                    <xpath:string key="id">some-complexity</xpath:string>
                    <xpath:array key="relationship">
                      <xpath:map>
                        <xpath:array key="coding">
                          <xpath:map>
                            <xpath:string key="code">SPS??</xpath:string><!-->XML has SPO followed by SPOUSE?</-->
                            <xpath:string key="display">spouse</xpath:string>
                            <xpath:string key="system">some-url</xpath:string>
                          </xpath:map>
                        </xpath:array>
                      </xpath:map>
                      <xpath:map>
                        <xpath:array key="coding">
                          <xpath:map>
                            <xpath:string key="code"> 
                              <xsl:value-of select="./hl7:NK1.7/hl7:CWE.1"/>
                            </xpath:string>
                            <xpath:string key="display"> 
                              <xsl:value-of select="./hl7:NK1.7/hl7:CWE.2"/>
                            </xpath:string>
                          </xpath:map>
                        </xpath:array>
                      </xpath:map>
                    </xpath:array>
                    <xpath:array key="name">
                      <xpath:map>
                        <xpath:string key="family">
                          <xsl:value-of select="./hl7:NK1.2/hl7:XPN.1/hl7:FN.1"/>
                        </xpath:string>
                        <xpath:array key="given">
                          <xpath:string><xsl:value-of select="./hl7:NK1.2/hl7:XPN.2"/></xpath:string>
                          <xpath:string><xsl:value-of select="./hl7:NK1.2/hl7:XPN.3"/></xpath:string>
                        </xpath:array>
                      </xpath:map>
                    </xpath:array>
                    <xpath:map key="patient">
                      <xpath:string key="reference">some-complexity</xpath:string>
                    </xpath:map>
                  </xpath:map>
                  <xpath:map key="request">
                    <xpath:string key="method">PUT</xpath:string>
                    <xpath:string key="url">some-complexity</xpath:string>
                  </xpath:map>
                </xpath:map>
                </xsl:for-each>
              </xpath:array>
          </xpath:map>
        </xsl:variable>
        <xsl:value-of select="xml-to-json($xml, map { 'indent' : true() })"/>
    </xsl:template>
</xsl:stylesheet>