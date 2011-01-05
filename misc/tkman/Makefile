# $OpenBSD: Makefile,v 1.23 2011/01/05 17:34:17 stu Exp $

COMMENT =	Tcl/Tk-based manual browser

DISTNAME =	tkman-2.2
CATEGORIES =	misc 
HOMEPAGE =	http://www.sourceforge.net/projects/tkman
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

# Artistic License
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=tkman/}
MODULES =	x11/tk

RUN_DEPENDS =	${MODTK_RUN_DEPENDS} \
		textproc/rman \
		textproc/glimpse

NO_REGRESS =	Yes

pre-patch:
	perl -pi -e 's!\r\n$$!\n!g;' ${WRKSRC}/Makefile

do-install:
	@${MODTCL_WISH_ADJ} ${WRKSRC}/tkman ${WRKSRC}/retkman
	${INSTALL_SCRIPT} ${WRKSRC}/tkman ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/retkman ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/tkman
	${INSTALL_DATA} ${WRKSRC}/manual.html ${PREFIX}/share/doc/tkman

.include <bsd.port.mk>
