# $OpenBSD: Makefile,v 1.11 2009/08/24 15:28:21 sthen Exp $

COMMENT=		curses front-end for various audio players

DISTNAME=		cplay-1.49
PKGNAME=		${DISTNAME}p4
CATEGORIES=		audio

HOMEPAGE=		http://mask.tf.hut.fi/~flu/hacks/cplay/

MAINTAINER=		Victor Sahlstedt <salan@legonet.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE} \
			http://spacehopper.org/mirrors/

MODULES=		lang/python

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

do-configure:
	@perl -pi -e "s,/etc/,${SYSCONFDIR}/," ${WRKSRC}/cplay{,.1}
	@perl -pi -e "s,^#!.*python,#!${MODPY_BIN}," ${WRKSRC}/cplay

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/cplay ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/cplay.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
