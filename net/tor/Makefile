# $OpenBSD: Makefile,v 1.73 2014/09/27 17:16:00 pascal Exp $

COMMENT=	anonymity service using onion routing

DISTNAME=	tor-0.2.4.24
CATEGORIES=	net
HOMEPAGE=	https://www.torproject.org/

MAINTAINER=	Pascal Stumpf <Pascal.Stumpf@cubes.de>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto event m pthread ssl z

MASTER_SITES=	https://www.torproject.org/dist/

CONFIGURE_STYLE=gnu
# PIE is already taken care of on a per-arch basis, and we have stack protection
# anyway on FRAME_GROWS_DOWN archs.
CONFIGURE_ARGS=	--with-ssl-dir=/usr \
		--disable-gcc-hardening

DB_DIR=		/var/tor
SUBST_VARS+=	DB_DIR

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples

.include <bsd.port.mk>
