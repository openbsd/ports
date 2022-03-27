COMMENT=		XML parser designed for Jabber applications
DISTNAME=		iksemel-1.4
REVISION=		14

SHARED_LIBS=		iksemel		0.1	# .4.0

CATEGORIES=		textproc net

HOMEPAGE=		https://github.com/meduketto/iksemel

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB =  brotlidec brotlienc c gmp gnutls hogweed iconv idn2 intl
WANTLIB += nettle p11-kit pthread tasn1 unistring z zstd

MASTER_SITES=		${MASTER_SITE_GOOGLECODE:=iksemel/}

LIB_DEPENDS=		security/gnutls

CONFIGURE_STYLE=	autoreconf
CONFIGURE_ARGS+=	CPPFLAGS="${CPPFLAGS} -I${LOCALBASE}/include"

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15

.include <bsd.port.mk>
