# $OpenBSD: Makefile,v 1.11 2016/05/24 07:54:16 ajacoutot Exp $

COMMENT =		library supporting Blu-ray playback

V =			0.9.3
DISTNAME =		libbluray-${V}
CATEGORIES =		multimedia

HOMEPAGE =		http://www.videolan.org/developers/libbluray.html

MAINTAINER =		Peter Hessler <phessler@openbsd.org>

MASTER_SITES =		https://download.videolan.org/pub/videolan/libbluray/${V}/ \
			ftp://ftp.videolan.org/pub/videolan/libbluray/${V}/
EXTRACT_SUFX =		.tar.bz2

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c expat fontconfig freetype iconv lzma m pthread
WANTLIB +=		pthread-stubs xml2 z

SHARED_LIBS +=		bluray		2.2	# 11.0

LIB_DEPENDS =		converters/libiconv \
			textproc/libxml
BUILD_DEPENDS =		devel/bison

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
YACC =			${LOCALBASE}/bin/bison -y
CONFIGURE_ARGS +=	--disable-bdjava \
			--disable-doxygen-doc \
			--disable-optimizations

.include <bsd.port.mk>
