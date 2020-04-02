# $OpenBSD: Makefile,v 1.39 2020/04/02 22:50:17 danj Exp $

COMMENT=	mail purpose library

GH_ACCOUNT=	dinhviethoa
GH_PROJECT=	libetpan
GH_TAGNAME=	1.9.3
CATEGORIES=	mail devel
REVISION=	0

SHARED_LIBS +=  etpan                18.2     # 24.0

HOMEPAGE=	https://www.etpan.org/libetpan.html

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += crypto curl expat iconv m nghttp2 pthread sasl2 ssl ${COMPILER_LIBCXX} z

COMPILER =		base-clang ports-gcc base-gcc

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
AUTORECONF=		./autogen.sh
LIB_DEPENDS+=	converters/libiconv \
		net/curl \
		security/cyrus-sasl2

CONFIGURE_STYLE= autoreconf
CONFIGURE_ARGS+= --with-curl=auto \
		--with-sasl="${LOCALBASE}" \
		--without-gnutls
CONFIGURE_ENV+= CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
