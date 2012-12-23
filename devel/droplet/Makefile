# $OpenBSD: Makefile,v 1.2 2012/12/23 13:25:11 sthen Exp $

SHARED_ONLY=		Yes

CATEGORIES=		devel
COMMENT=		high perfomance Cloud Storage client library

VERSION=		1.1
REVISION=		0
DISTNAME=		droplet-${VERSION}
HOMEPAGE=		https://github.com/scality/Droplet

SHARED_LIBS=		droplet		0.0 #0.0

MAINTAINER=		Rafael Sadowski <rafael@sizeofvoid.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		crypto json m pthread ssl xml2 z

MASTER_SITES=		http://www.sizeofvoid.org/pub/OpenBSD/distfiles/

WRKDIST=		${WRKDIR}/scality-Droplet-e6692cc
MODULES=		converters/libiconv
BUILD_DEPENDS=		${MODGNU_AUTOCONF_DEPENDS} \
			${MODGNU_AUTOMAKE_DEPENDS} \
			devel/json-c \
			devel/libtool
# XXX Depends on libtool macros

LIB_DEPENDS=		textproc/libxml \
			devel/json-c

USE_LIBTOOL=		Yes
AUTOCONF_VERSION=	2.68
AUTOMAKE_VERSION=	1.11
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
post-patch:
	cd ${WRKBUILD} && env AUTOCONF_VERSION=2.68 AUTOMAKE_VERSION=1.11 \
		/bin/sh ./autogen.sh

.include <bsd.port.mk>
