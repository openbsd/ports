# $OpenBSD: Makefile,v 1.14 1999/12/31 23:28:24 brad Exp $

DISTNAME=	screen-3.9.5
CATEGORIES=	misc
MASTER_SITES=	ftp://ftp.uni-erlangen.de/pub/utilities/screen/ \
		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= screen

MAINTAINER=	brad@openbsd.org

GNU_CONFIGURE=	yes

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/lib/screen
	${INSTALL_DATA} ${WRKSRC}/etc/etcscreenrc ${PREFIX}/lib/screen/screenrc
	${INSTALL_DATA} ${WRKSRC}/terminfo/screencap ${PREFIX}/lib/screen
	@install-info ${PREFIX}/info/screen.info ${PREFIX}/info/dir
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
