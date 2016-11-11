# $OpenBSD: Makefile,v 1.25 2016/11/11 12:07:00 danj Exp $

COMMENT=	mail purpose library

GH_ACCOUNT=	dinhviethoa
GH_PROJECT=	libetpan
GH_TAGNAME=	1.7.2
CATEGORIES=	mail devel
REVISION=	2

SHARED_LIBS=	etpan	17.0	# 20.0

HOMEPAGE=	http://www.etpan.org/libetpan.html

MAINTAINER=	Daniel Jakots <obsd@chown.me>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += crypto curl expat iconv m nghttp2 pthread sasl2 ssl stdc++ z

AUTOCONF_VERSION=	2.69
AUTOMAKE_VERSION=	1.15
BUILD_DEPENDS=	${MODGNU_AUTOCONF_DEPENDS} \
		${MODGNU_AUTOMAKE_DEPENDS} \
		devel/libtool
LIB_DEPENDS+=	converters/libiconv \
		net/curl \
		security/cyrus-sasl2

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= --with-curl=auto \
		--with-sasl="${LOCALBASE}" \
		--without-gnutls
CONFIGURE_ENV+= CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-patch:
	cd ${WRKSRC} && ${SETENV} \
	    AUTOCONF_VERSION="${AUTOCONF_VERSION}" \
	    AUTOMAKE_VERSION="${AUTOMAKE_VERSION}" \
	    NOCONFIGURE=1 \
	   ./autogen.sh

.include <bsd.port.mk>
