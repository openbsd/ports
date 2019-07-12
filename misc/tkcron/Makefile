# $OpenBSD: Makefile,v 1.23 2019/07/12 20:47:54 sthen Exp $

COMMENT =	Tk frontend to crontab

DISTNAME =	tkcron-2.12
REVISION =	1
CATEGORIES =	misc 
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

PERMIT_PACKAGE =	Yes

MASTER_SITES =	ftp://ftp.tcl.tk/pub/tcl/mirror/ftp.procplace.com/alcatel/code/
EXTRACT_SUFX =	.tcl.gz
MODULES =	x11/tk
RUN_DEPENDS =	${MODTK_RUN_DEPENDS}
NO_BUILD =	Yes
NO_TEST =	Yes
PKG_ARCH =	*
WRKDIST =	${WRKDIR}

pre-configure:
	@${MODTCL_WISH_ADJ} ${WRKSRC}/${DISTNAME}.tcl

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/${DISTNAME}.tcl ${PREFIX}/bin/tkcron

.include <bsd.port.mk>
