# $OpenBSD: Makefile,v 1.28 2000/08/25 04:17:44 brad Exp $

VERSION=	3.9.5
DISTNAME=	screen-${VERSION}
PKGNAME=	screen-${VERSION}p1
CATEGORIES=	misc
NEED_VERSION=	1.320
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= screen

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SUBST_VARS=	SYSCONFDIR VERSION

CONFIGURE_STYLE= gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/screen
	${INSTALL_DATA} ${WRKSRC}/etc/etcscreenrc \
	 ${PREFIX}/share/examples/screen/screenrc-sample
	${INSTALL_DATA} ${WRKSRC}/terminfo/screencap \
	 ${PREFIX}/share/examples/screen/screencap

.include <bsd.port.mk>
