# $OpenBSD: Makefile,v 1.8 2013/03/11 11:35:44 espie Exp $

COMMENT =	library for parsing mms:// and mmsh:// type network streams

DISTNAME =	libmms-0.6.2
CATEGORIES =	multimedia net
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=libmms/}
REVISION=	0

SHARED_LIBS =	mms 1.0 #0.2

HOMEPAGE =	http://libmms.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	glib-2.0 pcre

MODULES =	devel/gettext

LIB_DEPENDS =	devel/glib2

SEPARATE_BUILD = Yes
USE_LIBTOOL =	Yes
CONFIGURE_STYLE = gnu
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
