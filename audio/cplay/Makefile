# $OpenBSD: Makefile,v 1.18 2013/03/10 22:55:02 espie Exp $

COMMENT=		curses front-end for various audio players

DISTNAME=		cplay-1.49
REVISION =		7
CATEGORIES=		audio

HOMEPAGE=		http://mask.tf.hut.fi/~flu/hacks/cplay/

MAINTAINER=		Victor Sahlstedt <salan@legonet.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=		${HOMEPAGE} \
			http://spacehopper.org/mirrors/

MODULES=		lang/python

NO_BUILD=		Yes
NO_TEST=		Yes
PKG_ARCH=		*

do-configure:
	@perl -pi -e "s,/etc/,${SYSCONFDIR}/," ${WRKSRC}/cplay{,.1}
	@perl -pi -e "s,^#!.*python,#!${MODPY_BIN}," ${WRKSRC}/cplay

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/cplay ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/cplay.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
