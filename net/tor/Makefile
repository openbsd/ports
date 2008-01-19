# $OpenBSD: Makefile,v 1.34 2008/01/19 16:03:21 rui Exp $

COMMENT=	anonymity service using onion routing

DISTNAME=	tor-0.1.2.19
CATEGORIES=	net
HOMEPAGE=	http://tor.eff.org/

MAINTAINER=	Rui Reis <rui@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto event ssl z

MASTER_SITES=	${HOMEPAGE}dist/

AUTOCONF_VERSION=2.59

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-ssl-dir=/usr

DB_DIR=		/var/tor
SUBST_VARS=	DB_DIR

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples

.include <bsd.port.mk>
