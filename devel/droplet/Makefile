# $OpenBSD: Makefile,v 1.15 2018/06/16 11:49:00 rsadowski Exp $

CATEGORIES=		devel
COMMENT=		high performance Cloud Storage client library

GH_ACCOUNT =		scality
GH_PROJECT =		Droplet
GH_TAGNAME =		v2.0
DISTNAME=		droplet-${GH_TAGNAME:S/v//}
REVISION=		0

SHARED_LIBS=		droplet		1.0 #0.0

MAINTAINER =		Rafael Sadowski <rsadowski@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += crypto iconv json-c lzma m pthread ssl xml2 z

BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool
# XXX Depends on libtool macros

LIB_DEPENDS=		converters/libiconv \
			textproc/libxml \
			devel/json-c

AUTOCONF_VERSION=	2.68
AUTOMAKE_VERSION=	1.11
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
post-patch:
	cd ${WRKBUILD} && env AUTOCONF_VERSION=${AUTOCONF_VERSION} \
		AUTOMAKE_VERSION=${AUTOMAKE_VERSION} ./autogen.sh

.include <bsd.port.mk>
