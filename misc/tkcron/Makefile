# $OpenBSD: Makefile,v 1.20 2011/01/05 17:21:18 stu Exp $

COMMENT =	Tk frontend to crontab

DISTNAME =	tkcron-2.12
REVISION =	0
CATEGORIES =	misc 
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	ftp://ftp.tcl.tk/pub/tcl/mirror/ftp.procplace.com/alcatel/code/
EXTRACT_SUFX =	.tcl.gz
MODULES =	x11/tk
RUN_DEPENDS =	${MODTK_RUN_DEPENDS}
NO_BUILD =	Yes
NO_REGRESS =	Yes
PKG_ARCH =	*
WRKDIST =	${WRKDIR}

pre-configure:
	@${MODTCL_WISH_ADJ} ${WRKSRC}/${DISTNAME}.tcl

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${DISTNAME}.tcl ${PREFIX}/bin/tkcron

.include <bsd.port.mk>
