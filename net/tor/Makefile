# $OpenBSD: Makefile,v 1.62 2013/03/11 11:35:57 espie Exp $

COMMENT=	anonymity service using onion routing

DISTNAME=	tor-0.2.3.25
CATEGORIES=	net
HOMEPAGE=	http://www.torproject.org/

MAINTAINER=	Pascal Stumpf <Pascal.Stumpf@cubes.de>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto event m pthread ssl z

MASTER_SITES=	${HOMEPAGE}dist/

CONFIGURE_STYLE=gnu
# PIE is already taken care of on a per-arch basis, and we have stack protection
# anyway on FRAME_GROWS_DOWN archs.
CONFIGURE_ARGS=	--with-ssl-dir=/usr \
		--disable-gcc-hardening

DB_DIR=		/var/tor
SUBST_VARS+=	DB_DIR

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples

.include <bsd.port.mk>
