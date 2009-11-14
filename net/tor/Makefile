# $OpenBSD: Makefile,v 1.41 2009/11/14 10:09:05 benoit Exp $

COMMENT=	anonymity service using onion routing

DISTNAME=	tor-0.2.1.20
CATEGORIES=	net
HOMEPAGE=	http://www.torproject.org/

MAINTAINER=	Rui Reis <rui@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto event pthread ssl z

MASTER_SITES=	${HOMEPAGE}dist/

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-ssl-dir=/usr

DB_DIR=		/var/tor
SUBST_VARS=	DB_DIR

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples

.include <bsd.port.mk>
