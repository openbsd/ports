# $OpenBSD: Makefile,v 1.2 2016/11/30 18:52:36 jasper Exp $

COMMENT=		automated hinting process based on FreeType's autohinter #'

V =			1.6
DISTNAME =		ttfautohint-${V}
CATEGORIES =		graphics

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE =		http://www.freetype.org/ttfautohint/#download

# FreeType License or GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://download.savannah.gnu.org/releases/freetype/

MODULES =		devel/gettext \
			gcc4

MODGCC4_ARCHS =		*
MODGCC4_LANGS =		c c++

WANTLIB += c freetype glib-2.0 graphite2 harfbuzz m pcre pthread
WANTLIB += z

LIB_DEPENDS =		devel/harfbuzz

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--without-doc \
			--without-qt

.include <bsd.port.mk>
