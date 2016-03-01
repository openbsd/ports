# $OpenBSD: Makefile,v 1.1.1.1 2016/03/01 10:12:19 jasper Exp $

COMMENT=		automated hinting process based on FreeType's autohinter #'

V =			1.5
DISTNAME =		ttfautohint-${V}
CATEGORIES =		graphics

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE =		http://www.freetype.org/ttfautohint/#download

# FreeType License or GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		http://download.savannah.gnu.org/releases/freetype/

MODULES =		devel/gettext \
			gcc4

WANTLIB += c freetype glib-2.0 graphite2 harfbuzz m pcre pthread
WANTLIB += stdc++ z

LIB_DEPENDS =		devel/harfbuzz

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--without-doc \
			--without-qt

.include <bsd.port.mk>
