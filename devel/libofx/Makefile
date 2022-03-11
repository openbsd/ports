COMMENT=	opensource implementation of the OFX specification

DISTNAME=	libofx-0.10.3
CATEGORIES=	devel

HOMEPAGE=	http://libofx.sourceforge.net/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libofx/}

MAINTAINER=	Landry Breuil <landry@openbsd.org>

SHARED_LIBS=	ofx 8.0	# .7.2

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB=	c iconv intl m pthread ${COMPILER_LIBCXX} osp

COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS=	textproc/opensp \
		net/curl \
		textproc/libxml++

WANTLIB += crypto curl ffi glib-2.0 glibmm-2.4 gmodule-2.0 gobject-2.0
WANTLIB += lzma nghttp2 pcre sigc-2.0 ssl xml++-2.6 xml2 z

BUILD_DEPENDS =	devel/help2man

CONFIGURE_STYLE =	gnu
# iconv.h
CONFIGURE_ENV=	LDFLAGS="-L${LOCALBASE}/lib" \
		CPPFLAGS="-I${LOCALBASE}/include" \
		ac_cv_sym_visibility=yes
# uses $<
USE_GMAKE =	Yes

CONFIGURE_ARGS=	--with-opensp-includes=${LOCALBASE}/include/OpenSP \
		--with-opensp-libs=${LOCALBASE}/lib \
		--disable-gengetopt \
		--disable-doxygen \
		--disable-dot

.include <bsd.port.mk>
