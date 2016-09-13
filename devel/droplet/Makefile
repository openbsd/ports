# $OpenBSD: Makefile,v 1.14 2016/09/13 14:40:29 naddy Exp $

CATEGORIES=		devel
COMMENT=		high performance Cloud Storage client library

VERSION=		2.0
DISTNAME=		droplet-${VERSION}
GH_ACCOUNT =		scality
GH_PROJECT =		Droplet
GH_COMMIT =		22e7e46214a26c36a2314ef0c23ee42c861ec6bd

SHARED_LIBS=		droplet		1.0 #0.0

MAINTAINER=		Rafael Sadowski <rafael@sizeofvoid.org>

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
