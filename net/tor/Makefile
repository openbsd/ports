# $OpenBSD: Makefile,v 1.112 2018/04/25 12:54:15 stsp Exp $

COMMENT=	anonymity service using onion routing

DISTNAME=	tor-0.3.2.10
REVISION=	0
CATEGORIES=	net
HOMEPAGE=	https://www.torproject.org/

MAINTAINER=	Pascal Stumpf <pascal@stumpf.co>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c crypto event_core event_extra m pthread ssl z

MASTER_SITES=	https://www.torproject.org/dist/

AUTOCONF_VERSION=2.69
CONFIGURE_STYLE=autoconf
# PIE is already taken care of on a per-arch basis, and we have stack protection
# anyway on FRAME_GROWS_DOWN archs.
CONFIGURE_ARGS=	--with-ssl-dir=/usr \
		--with-libevent-dir="${LOCALBASE}" \
		--disable-gcc-hardening \
		--disable-lzma
CONFIGURE_ENV+=ac_cv_member_struct_ssl_method_st_get_cipher_by_char=no

LIB_DEPENDS=	devel/libevent2

DB_DIR=		/var/tor
SUBST_VARS+=	DB_DIR

FAKE_FLAGS=	sysconfdir=${PREFIX}/share/examples

.include <bsd.port.mk>
