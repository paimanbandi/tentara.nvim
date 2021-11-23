local generate = function ()
  local colors = {
    cNone = 'NONE',
    cFront = '#D4D4D4',
    cBack = '#1E1E1E',

    cTabCurrent = '#1E1E1E',
    cTabOther = '#2D2D2D',
    cTabOutside = '#252526',

    cLeftDark = '#252526',
    cLeftMid = '#373737',
    cLeftLight = '#636369',

    cPopupFront = '#BBBBBB',
    cPopupBack = '#2D2D30',
    cPopupHighlightBlue = '#073655',
    cPopupHighlightGray = '#3D3D40',

    cSplitLight = '#898989',
    cSplitDark = '#444444',
    cSplitThumb = '#424242',

    cCursorDarkDark = '#222222',
    cCursorDark = '#51504F',
    cCursorLight = '#AEAFAD',
    cSelection = '#264F78',
    cLineNumber = '#5A5A5A',

    cDiffRedDark = '#4B1818',
    cDiffRedLight = '#6F1313',
    cDiffRedLightLight = '#FB0101',
    cDiffGreenDark = '#373D29',
    cDiffGreenLight = '#4B5632',
    cSearchCurrent = '#4B5632',
    cSearch = '#264F78',

    cGray = '#808080',
    cViolet = '#646695',
    cPictonBlue = '#569CD6',
    cCurlyWillow = '#b3a589',
    cJapaneseLaurel = '#358A43',
    cOlive = '#79740e',
    cLimeGreen = '#607d60',
    cBlueGreen = '#4EC9B0',
    cLightGreen = '#B5CEA8',
    cThunderbird = '#CC241D',
    cLightRed = '#D16969',
    cYellowOrange = '#D7BA7D',
    cYellow = '#DCDCAA',
    cTapestry = '#b16286',
    cUiBlue = '#0451A5',
    cTenne = '#D65D0E',
    cMediumOrchid = '#BA55D3'
  }
	return colors
end

return {generate = generate}
