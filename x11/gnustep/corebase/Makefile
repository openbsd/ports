# $OpenBSD: Makefile,v 1.6 2014/05/22 09:48:56 sebastia Exp $

COMMENT =	GNUstep reimplementation of Apple's CoreFoundation

DISTNAME =	gnustep-corebase-0.1.1
REVISION =	2
CATEGORIES=	devel

SHARED_LIBS =	gnustep-corebase 0.0

HOMEPAGE =	http://www.gnustep.org/
MASTER_SITES =	${MASTER_SITE_GNUSTEP:=libs/}

MODULES =	converters/libiconv x11/gnustep
MODGNUSTEP_IS_FRAMEWORK = Yes
WANTLIB += icudata icui18n icuuc m objc2 pthread
WANTLIB += avahi-client avahi-common ffi gcrypt gmp gnutls
WANTLIB += xml2 xslt z
LIB_DEPENDS +=		textproc/icu4c \
			x11/gnustep/libobjc2

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV +=	CPPFLAGS=-I${LOCALBASE}/include
MAKE_FLAGS +=	libgnustep-corebase_INTERFACE_VERSION=${LIBgnustep-corebase_VERSION}

.include <bsd.port.mk>
