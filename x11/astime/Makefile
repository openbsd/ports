# $OpenBSD: Makefile,v 1.1.1.1 2001/03/09 08:40:13 wilfried Exp $

DISTNAME=		astime-2.8
CATEGORIES=     	x11 x11/windowmaker
NEED_VERSION=		1.359

HOMEPAGE=		http://www.tigr.net/afterstep/as-apps/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.tigr.net/afterstep/download/astime/

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-jpeg

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/astime ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/astime.man ${PREFIX}/man/man1/astime.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/asclock
	cd ${WRKBUILD} && ${INSTALL_DATA} default.astimerc modern.astimerc \
		sample.astimerc thick.astimerc ${PREFIX}/share/examples/asclock

.include <bsd.port.mk>
