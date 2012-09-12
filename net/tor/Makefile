# $OpenBSD: Makefile,v 1.60 2012/09/12 21:09:28 pascal Exp $

COMMENT=	anonymity service using onion routing

DISTNAME=	tor-0.2.2.39
CATEGORIES=	net
HOMEPAGE=	http://www.torproject.org/

MAINTAINER=	Pascal Stumpf <Pascal.Stumpf@cubes.de>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += c crypto event m pthread ssl z

MASTER_SITES=	${HOMEPAGE}dist/

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-ssl-dir=/usr

DB_DIR=		/var/tor
SUBST_VARS+=	DB_DIR

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples

.include <bsd.port.mk>
