# $OpenBSD: Makefile,v 1.6 2015/04/21 18:51:25 sthen Exp $

SHARED_ONLY =		Yes

COMMENT =		library supporting Blu-ray playback

V =			0.2.3
DISTNAME =		libbluray-${V}
CATEGORIES =		multimedia
REVISION =		0

HOMEPAGE =		http://www.videolan.org/developers/libbluray.html

MAINTAINER =		Peter Hessler <phessler@openbsd.org>

MASTER_SITES =		http://download.videolan.org/pub/videolan/libbluray/${V}/ \
			ftp://ftp.videolan.org/pub/videolan/libbluray/${V}/
EXTRACT_SUFX =		.tar.bz2

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c lzma m pthread xml2 z

SHARED_LIBS +=		bluray		1.0	# 3.0

MODULES =		converters/libiconv

LIB_DEPENDS =		textproc/libxml
BUILD_DEPENDS =		devel/bison \
			devel/flex

MAKE_FLAGS =		CFLAGS="${CFLAGS}"

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
YACC =			${LOCALBASE}/bin/bison -y
CONFIGURE_ENV =		ac_cv_prog_LEX="${LOCALBASE}/bin/gflex"
CONFIGURE_ARGS +=	--disable-doxygen-doc

.include <bsd.port.mk>
