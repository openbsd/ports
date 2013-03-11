# $OpenBSD: Makefile,v 1.24 2013/03/11 11:23:58 espie Exp $

COMMENT =	Tcl/Tk-based manual browser

DISTNAME =	tkman-2.2
CATEGORIES =	misc 
HOMEPAGE =	http://www.sourceforge.net/projects/tkman
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# Artistic License
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=tkman/}
MODULES =	x11/tk

RUN_DEPENDS =	${MODTK_RUN_DEPENDS} \
		textproc/rman \
		textproc/glimpse

NO_TEST =	Yes

pre-patch:
	perl -pi -e 's!\r\n$$!\n!g;' ${WRKSRC}/Makefile

do-install:
	@${MODTCL_WISH_ADJ} ${WRKSRC}/tkman ${WRKSRC}/retkman
	${INSTALL_SCRIPT} ${WRKSRC}/tkman ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/retkman ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tkman
	${INSTALL_DATA} ${WRKSRC}/manual.html ${PREFIX}/share/doc/tkman

.include <bsd.port.mk>
