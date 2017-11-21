# $OpenBSD: Makefile,v 1.8 2017/11/21 00:13:03 naddy Exp $

CATEGORIES =		productivity devel
COMMENT =		C library for Google calendar and contacts
DISTNAME =		libgcal-0.9.6
HOMEPAGE =		https://code.google.com/p/libgcal/
REVISION =		4

SHARED_LIBS =		gcal	0.0

# BSDL
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =  crypto curl iconv intl lzma m nghttp2 pthread ssl xml2 z

MASTER_SITES =		${MASTER_SITE_GOOGLECODE:=libgcal/}
EXTRACT_SUFX =		.tar.bz2

CONFIGURE_STYLE =	gnu

BUILD_DEPENDS =		devel/check
LIB_DEPENDS =		devel/gettext \
			net/curl \
			textproc/libxml

SEPARATE_BUILD =	Yes

.include <bsd.port.mk>
