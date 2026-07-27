COMMENT =	Tcl/Tk-based manual browser

REVISION =	3

DISTNAME =	tkman-2.2

CATEGORIES =	misc 
HOMEPAGE =	https://www.sourceforge.net/projects/tkman
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# Artistic License
PERMIT_PACKAGE =Yes

SITES =		${SITE_SOURCEFORGE:=tkman/}

MODULES =	x11/tk
MODTK_VERSION =	8.6

RUN_DEPENDS =	${MODTK_RUN_DEPENDS} \
		textproc/rman

NO_TEST =	Yes

FIX_CRLF_FILES = Makefile gui.tcl

do-install:
	@${MODTCL_WISH_ADJ} ${WRKSRC}/tkman ${WRKSRC}/retkman
	${INSTALL_SCRIPT} ${WRKSRC}/tkman ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/retkman ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tkman
	${INSTALL_DATA} ${WRKSRC}/manual.html ${PREFIX}/share/doc/tkman

.include <bsd.port.mk>
