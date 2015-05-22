# $OpenBSD: Makefile,v 1.7 2015/05/22 12:38:28 ajacoutot Exp $

SHARED_ONLY =		Yes

COMMENT =		library supporting Blu-ray playback

V =			0.8.0
DISTNAME =		libbluray-${V}
CATEGORIES =		multimedia

HOMEPAGE =		http://www.videolan.org/developers/libbluray.html

MAINTAINER =		Peter Hessler <phessler@openbsd.org>

MASTER_SITES =		https://download.videolan.org/pub/videolan/libbluray/${V}/ \
			ftp://ftp.videolan.org/pub/videolan/libbluray/${V}/
EXTRACT_SUFX =		.tar.bz2

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c expat fontconfig freetype lzma m pthread pthread-stubs
WANTLIB +=		xml2 z

SHARED_LIBS +=		bluray		2.0	# 9.0

MODULES =		converters/libiconv

LIB_DEPENDS =		textproc/libxml
BUILD_DEPENDS =		devel/bison \
			devel/flex

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
YACC =			${LOCALBASE}/bin/bison -y
CONFIGURE_ARGS +=	--disable-bdjava \
			--disable-doxygen-doc \
			--disable-optimizations
CONFIGURE_ENV =		ac_cv_prog_LEX="${LOCALBASE}/bin/gflex"

.include <bsd.port.mk>
