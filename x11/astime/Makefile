# $OpenBSD: Makefile,v 1.7 2002/05/15 09:30:22 wilfried Exp $

COMMENT=		'wm-dockapp; Time/Date applet'

DISTNAME=		astime-2.8
CATEGORIES=		x11 x11/windowmaker
NEED_VERSION=		1.482

HOMEPAGE=		http://www.tigr.net/afterstep/detail.pl?applet=astime

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.tigr.net/afterstep/download/astime/

USE_X11=		Yes
NO_REGRESS=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=		--disable-jpeg

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/astime ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/astime.man ${PREFIX}/man/man1/astime.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/asclock
	cd ${WRKSRC} && ${INSTALL_DATA} default.astimerc modern.astimerc \
		sample.astimerc thick.astimerc ${PREFIX}/share/examples/asclock

.include <bsd.port.mk>
