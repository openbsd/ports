# $OpenBSD: Makefile,v 1.6 2014/05/23 12:31:36 sthen Exp $

SHARED_ONLY=		Yes

CATEGORIES=		devel
COMMENT=		high performance Cloud Storage client library

VERSION=		1.1
REVISION=		2
DISTNAME=		droplet-${VERSION}
HOMEPAGE=		https://github.com/scality/Droplet

SHARED_LIBS=		droplet		0.0 #0.0

MAINTAINER=		Rafael Sadowski <rafael@sizeofvoid.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		crypto json-c m pthread ssl xml2 z

MASTER_SITES=		http://www.sizeofvoid.org/pub/OpenBSD/distfiles/

WRKDIST=		${WRKDIR}/scality-Droplet-e6692cc
MODULES=		converters/libiconv
BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/libtool
# XXX Depends on libtool macros

LIB_DEPENDS=		textproc/libxml \
			devel/json-c

AUTOCONF_VERSION=	2.68
AUTOMAKE_VERSION=	1.11
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
post-patch:
	cd ${WRKBUILD} && env AUTOCONF_VERSION=2.68 AUTOMAKE_VERSION=1.11 \
		/bin/sh ./autogen.sh

.include <bsd.port.mk>
