COMMENT =		Microsoft ClearType fonts

DISTNAME =		PowerPointViewer.exe
EXTRACT_SUFX =

MODFONT_FAMILY =	msctfonts
MODFONT_VERSION =	1.0

# No redistribution
PERMIT_PACKAGE =	No redistribution
PERMIT_DISTFILES =	No redistribution

SITES =			http://download.microsoft.com/download/f/5/a/f5a3df76-d856-4a61-a6bd-722f52a5be26/

BUILD_DEPENDS =		archivers/cabextract

MODULES =		font

NO_BUILD =		Yes
NO_TEST =		Yes

EXTRACT_CASES =		*.exe) cabextract --lowercase --quiet \
			--directory=${WRKDIST} -F ppviewer.cab ${DISTDIR}/${DISTNAME} ;;

post-extract:
	@cabextract --lowercase -F '*.TT[FC]' --directory=${WRKDIST} \
		${WRKDIST}/ppviewer.cab
	@mv ${WRKDIST}/cambria.ttc ${WRKDIST}/cambria.ttf

.include <bsd.port.mk>
