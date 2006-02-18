# $OpenBSD: Makefile,v 1.5 2006/02/18 19:26:40 steven Exp $

COMMENT=		"curses front-end for various audio players"

DISTNAME=		cplay-1.49
PKGNAME=		${DISTNAME}p0
CATEGORIES=		audio

HOMEPAGE=		http://mask.tf.hut.fi/~flu/hacks/cplay/

MAINTAINER=		Victor Sahlstedt <salan@legonet.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

MODULES=		lang/python

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

do-configure:
	@perl -pi -e "s,/etc/,${SYSCONFDIR}/," ${WRKSRC}/cplay{,.1}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/cplay ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/cplay.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
