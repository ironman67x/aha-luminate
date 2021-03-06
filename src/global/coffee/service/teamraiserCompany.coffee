angular.module 'ahaLuminateApp'
  .factory 'TeamraiserCompanyService', [
    'LuminateRESTService'
    (LuminateRESTService) ->
      getCompanies: (requestData, callback) ->
        dataString = 'method=getCompaniesByInfo'
        dataString += '&' + requestData if requestData and requestData isnt ''
        LuminateRESTService.luminateExtendTeamraiserRequest dataString, false, true, callback
      
      getCompanyList: (requestData, callback) ->
        dataString = 'method=getCompanyList'
        dataString += '&' + requestData if requestData and requestData isnt ''
        LuminateRESTService.luminateExtendTeamraiserRequest dataString, false, true, callback
  ]