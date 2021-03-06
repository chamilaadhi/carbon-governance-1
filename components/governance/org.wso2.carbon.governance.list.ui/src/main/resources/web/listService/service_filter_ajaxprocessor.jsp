<%--
 ~ Copyright (c) 2005-2010, WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
 ~
 ~ WSO2 Inc. licenses this file to you under the Apache License,
 ~ Version 2.0 (the "License"); you may not use this file except
 ~ in compliance with the License.
 ~ You may obtain a copy of the License at
 ~
 ~    http://www.apache.org/licenses/LICENSE-2.0
 ~
 ~ Unless required by applicable law or agreed to in writing,
 ~ software distributed under the License is distributed on an
 ~ "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 ~ KIND, either express or implied.  See the License for the
 ~ specific language governing permissions and limitations
 ~ under the License.
 --%>
<%@ page import="org.wso2.carbon.registry.core.RegistryConstants" %>
<%@ page import="org.wso2.carbon.governance.services.ui.utils.AddServicesUtil" %>
<%@ page import="org.wso2.carbon.ui.CarbonUIMessage" %>
<%@ page import="org.wso2.carbon.governance.services.ui.utils.AddServiceUIGenerator" %>
<%@ page import="org.apache.axiom.om.OMElement" %>
<%@ page import="org.wso2.carbon.governance.services.ui.utils.UIGeneratorConstants" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="javax.xml.namespace.QName" %>
<%@ page import="org.wso2.carbon.governance.services.ui.clients.AddServicesServiceClient" %>
<%
AddServicesServiceClient client = new AddServicesServiceClient(config,session);
AddServiceUIGenerator uigen = new AddServiceUIGenerator();
OMElement head = uigen.getUIConfiguration(client.getServiceConfiguration(),request,config,session);
OMElement filledService = uigen.getDataFromUI(head,request);
session.setAttribute("criteria", filledService.toString());

response.sendRedirect("../listService/service.jsp?filter=filter&region=region3&item=governance_list_services_menu");
%>