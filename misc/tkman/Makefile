COMMENT =	Tcl/Tk-based manual browser

DISTNAME =	tkman-2.2
REVISION =	1
CATEGORIES =	misc 
HOMEPAGE =	http://www.sourceforge.net/projects/tkman
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# Artistic License
PERMIT_PACKAGE =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=tkman/}
MODULES =	x11/tk

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
