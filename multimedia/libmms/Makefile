# $OpenBSD: Makefile,v 1.14 2019/07/12 20:47:56 sthen Exp $

COMMENT =	library for parsing mms:// and mmsh:// type network streams

DISTNAME =	libmms-0.6.2
CATEGORIES =	multimedia net
MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=libmms/}
REVISION=	4

SHARED_LIBS =	mms 1.0 #0.2

HOMEPAGE =	http://libmms.sourceforge.net/

# LGPLv2.1
PERMIT_PACKAGE =	Yes

WANTLIB =  glib-2.0 iconv intl pcre pthread

LIB_DEPENDS =	devel/glib2

SEPARATE_BUILD = Yes
CONFIGURE_STYLE = gnu
CONFIGURE_ENV =	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
