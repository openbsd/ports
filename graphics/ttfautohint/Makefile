# $OpenBSD: Makefile,v 1.14 2019/07/12 20:47:11 sthen Exp $

COMMENT=		automated hinting process based on FreeType's autohinter #'

V =			1.8.3
DISTNAME =		ttfautohint-${V}
SHARED_LIBS +=  ttfautohint               0.0 # 1.0
CATEGORIES =		graphics

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE =		http://www.freetype.org/ttfautohint/#download

# FreeType License or GPLv2
PERMIT_PACKAGE =	Yes

MASTER_SITES =		http://download.savannah.gnu.org/releases/freetype/

COMPILER =		base-clang ports-gcc

WANTLIB += c freetype glib-2.0 graphite2 harfbuzz iconv intl m pthread
WANTLIB += z ${COMPILER_LIBCXX}

LIB_DEPENDS =		devel/harfbuzz

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--without-doc \
			--without-qt

# gnulib problem: autoconf tests run with -std=gnu99, which hides the
# max_align_t definition (like it should), but then some of the code gets
# compiled with -std=gnu++11, which exposes the definition.
#
# https://lists.gnu.org/archive/html/bug-gnulib/2016-04/msg00003.html

CONFIGURE_ENV =		ac_cv_type_max_align_t=yes

.include <bsd.port.mk>
