# $OpenBSD: Makefile,v 1.1.1.1 2004/02/18 19:23:40 sturm Exp $

COMMENT=		"curses front-end for various audio players"

DISTNAME=		cplay-1.49
CATEGORIES=		audio

HOMEPAGE=		http://www.tf.hut.fi/~flu/cplay/

MAINTAINER=		Victor Sahlstedt <cvss@home.se>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

RUN_DEPENDS=		:python-2.3.*:lang/python/2.3/

NO_BUILD=		Yes
NO_REGRESS=		Yes
PKG_ARCH=		*

do-configure:
	@perl -pi -e "s,/etc/,${SYSCONFDIR}/," ${WRKSRC}/cplay{,.1}

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/cplay ${PREFIX}/bin/
	${INSTALL_MAN} ${WRKSRC}/cplay.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
