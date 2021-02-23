# $OpenBSD: Makefile.inc,v 1.9 2021/02/23 06:30:57 bket Exp $

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

# Although at fist glance it may appear that we could MULTI_PACKAGE audacious,
# actually we can't. Some core libraries will link qt5 if we build with both
# toolkits. So we use FLAVORS instead.
# https://redmine.audacious-media-player.org/issues/1071

.if ${FLAVOR:Mqt5}
MODULES +=		x11/qt5
CONFIGURE_ARGS +=	--disable-gtk \
			--enable-qt
.else
LIB_DEPENDS +=		x11/gtk+2
CONFIGURE_ARGS +=	--disable-qt \
			--enable-gtk
.endif

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes
