# $OpenBSD: Makefile,v 1.22 2000/06/23 18:59:39 brad Exp $

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
	@rm -f ${PREFIX}/bin/screen
	@cd ${PREFIX}/bin; ln -sf screen-3.9.5 screen
	${INSTALL_DATA_DIR} ${PREFIX}/lib/screen
	${INSTALL_DATA} ${WRKSRC}/etc/etcscreenrc ${PREFIX}/lib/screen/screenrc
	${INSTALL_DATA} ${WRKSRC}/terminfo/screencap ${PREFIX}/lib/screen

.include <bsd.port.mk>
