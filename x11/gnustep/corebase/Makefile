# $OpenBSD: Makefile,v 1.1.1.1 2012/08/06 11:12:44 sebastia Exp $

COMMENT =	GNUstep reimplementation of Apple's CoreFoundation

DISTNAME =	gnustep-corebase-0.1
CATEGORIES=	devel

SHARED_LIBS =	gnustep-corebase 0.0

HOMEPAGE =	http://www.gnustep.org/
MASTER_SITES =	${MASTER_SITE_GNUSTEP:=libs/}

MODULES =		x11/gnustep
MODGNUSTEP_NEEDS_GUI =	No
WANTLIB += icudata icui18n icuuc
LIB_DEPENDS +=		textproc/icu4c

CONFIGURE_STYLE =	gnu

CONFIGURE_ENV +=	CPPFLAGS=-I${LOCALBASE}/include
MAKE_FLAGS +=	libgnustep-corebase_INTERFACE_VERSION=${LIBgnustep-corebase_VERSION}

.include <bsd.port.mk>
