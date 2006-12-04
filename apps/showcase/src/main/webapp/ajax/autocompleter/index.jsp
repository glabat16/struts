<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>Ajax Examples</title>

    <!--// START SNIPPET: common-include-->
    <jsp:include page="/ajax/commonInclude.jsp"/>
    <!--// END SNIPPET: common-include-->
</head>

<body>

Using a JSON list returned from an action (href="/JSONList.action"), without autoComplete (autoComplete="false")
<br/>
<s:autocompleter theme="ajax" href="/JSONList.action" cssStyle="width: 200px;" autoComplete="false"/>

<br/>
<br/>

Using a JSON list returned from an action (href="/JSONList.action"), with autoComplete (autoComplete="true")
<br/>
<s:autocompleter theme="ajax" href="/JSONList.action" cssStyle="width: 200px;" autoComplete="true" />

<br/>
<br/>

Using a local list (list="{'apple','banana','grape','pear'}")
<br/>
<s:autocompleter theme="simple" list="{'apple','banana','grape','pear'}" cssStyle="width: 150px;"/>

<br/>
<br/>

Force valid options (forceValidOption="true")
<br/>
<s:autocompleter theme="ajax" href="/JSONList.action" cssStyle="width: 200px;" forceValidOption="true"/>

<br/>
<br/>

Make dropdown's height to 180px  (dropdownHeight="180")
<br/>
<s:autocompleter theme="ajax" href="/JSONList.action" cssStyle="width: 200px;" dropdownHeight="180"/>

<br/>
<br/>

Disabled combobox (disabled="true")
<br/>
<s:autocompleter theme="ajax" href="/JSONList.action" cssStyle="width: 200px;" disabled="true"/>

<br/>
<br/>



Link two autocompleter elements. When the selected value in 'Autocompleter 1' changes, the available values in 'Autocompleter 2' will change also.
<br/>
<form id="selectForm">
  <p>Autocompleter 1 <s:autocompleter theme="simple" name="select" list="{'fruits','colors'}"  value="colors" onValueChangedPublishTopic="/Refresh" forceValidOption="true"/></p>
</form>
Autocompleter 2 <s:autocompleter theme="ajax" href="/nodecorate/AutocompleterExample.action" autoComplete="false" formId="selectForm" refreshListenTopic="/Refresh" forceValidOption="true"/>

<br/>
<br/>

<s:include value="../footer.jsp"/>
</body>
</html>
