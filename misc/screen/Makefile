# $OpenBSD: Makefile,v 1.12 1999/11/30 22:59:18 brad Exp $

DISTNAME=	screen-3.9.5
CATEGORIES=	misc
MASTER_SITES=	ftp://ftp.uni-erlangen.de/pub/utilities/screen/ \
		${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= screen

MAINTAINER=	uk1o@rz114s0-197.rz.uni-karlsruhe.de

GNU_CONFIGURE=	yes

pre-configure:
	@rm -f ${WRKSRC}/doc/screen.info*

post-install:
	@mkdir -p ${PREFIX}/lib/screen
	@install-info ${PREFIX}/info/screen.info ${PREFIX}/info/dir
	${INSTALL_DATA} ${WRKSRC}/etc/etcscreenrc ${PREFIX}/lib/screen/screenrc
	${INSTALL_DATA} ${WRKSRC}/terminfo/screencap ${PREFIX}/lib/screen
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
