# $OpenBSD: Makefile.inc,v 1.6 2021/02/03 21:44:37 edd Exp $

# Do not forget to sync meta/audacious
VERSION =	4.1

CATEGORIES =	audio multimedia

HOMEPAGE =	https://audacious-media-player.org/

MAINTAINER =	Bjorn Ketelaars <bket@openbsd.org>

MASTER_SITES =	https://distfiles.audacious-media-player.org/
EXTRACT_SUFX =	.tar.bz2

COMPILER =	base-clang ports-gcc

FIX_EXTRACT_PERMISSIONS =	Yes

BUILD_DEPENDS +=	devel/gettext,-tools
LIB_DEPENDS +=		x11/gtk+2

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS +=	--disable-qt \
			--enable-gtk

NO_TEST =		Yes
