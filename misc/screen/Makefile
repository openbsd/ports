# $OpenBSD: Makefile,v 1.24 2000/08/04 18:25:24 brad Exp $

DISTNAME=	screen-3.9.5
PKGNAME=	screen-3.9.5p1
CATEGORIES=	misc
NEED_VERSION=	1.301
MASTER_SITES=	ftp://ftp.uni-erlangen.de/pub/utilities/screen/ \
		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= screen

MAINTAINER=	brad@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu dest

post-install:
	@cd ${PREFIX}/bin && ln -sf screen-3.9.5 screen
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/screen
	${INSTALL_DATA} ${WRKSRC}/etc/etcscreenrc \
	 ${PREFIX}/share/examples/screen/screenrc-sample
	${INSTALL_DATA} ${WRKSRC}/terminfo/screencap \
	 ${PREFIX}/share/examples/screen/screencap

.include <bsd.port.mk>
