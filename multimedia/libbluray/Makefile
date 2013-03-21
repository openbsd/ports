# $OpenBSD: Makefile,v 1.5 2013/03/21 08:46:33 ajacoutot Exp $

SHARED_ONLY =		Yes

COMMENT =		library supporting Blu-ray playback

V =			0.2.3
DISTNAME =		libbluray-${V}
CATEGORIES =		multimedia

HOMEPAGE =		http://www.videolan.org/developers/libbluray.html

MAINTAINER =		Peter Hessler <phessler@openbsd.org>

MASTER_SITES =		http://download.videolan.org/pub/videolan/libbluray/${V}/ \
			ftp://ftp.videolan.org/pub/videolan/libbluray/${V}/
EXTRACT_SUFX =		.tar.bz2

# LGPL v2.1
PERMIT_PACKAGE_CDROM =	Yes

SHARED_LIBS +=		bluray		1.0	# 3.0
WANTLIB +=		c m pthread xml2 z

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
