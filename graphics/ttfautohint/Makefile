# $OpenBSD: Makefile,v 1.6 2017/07/16 19:18:57 espie Exp $

COMMENT=		automated hinting process based on FreeType's autohinter #'

V =			1.6
REVISION =		0
DISTNAME =		ttfautohint-${V}
CATEGORIES =		graphics

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE =		http://www.freetype.org/ttfautohint/#download

# FreeType License or GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://download.savannah.gnu.org/releases/freetype/

MODULES =		devel/gettext

COMPILER =		gcc

WANTLIB += c freetype glib-2.0 graphite2 harfbuzz m pcre pthread
WANTLIB += z ${COMPILER_LIBCXX}

LIB_DEPENDS =		devel/harfbuzz

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
