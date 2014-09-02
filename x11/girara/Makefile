# $OpenBSD: Makefile,v 1.1.1.1 2014/09/02 13:22:32 landry Exp $

COMMENT =	user interface library from pwmt
DISTNAME =	girara-0.2.2

SHARED_LIBS +=	girara-gtk3 0.0 # 0.0

CATEGORIES =	x11
HOMEPAGE =	http://pwmt.org/projects/girara/

# zlib
PERMIT_PACKAGE_CDROM =Yes

MASTER_SITES =	http://pwmt.org/projects/girara/download/

LIB_DEPENDS =	x11/gtk+3 \
		devel/libnotify
MODULES =	devel/gettext

WANTLIB += atk-1.0 cairo cairo-gobject fontconfig freetype gdk-3
WANTLIB += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3 m
WANTLIB += notify pango-1.0 pangocairo-1.0 pangoft2-1.0 z

USE_GMAKE =	Yes

MAKE_FLAGS +=	QUIET= TPUT=true
MAKE_FLAGS +=	SOVERSION=${LIBgirara-gtk3_VERSION}

FAKE_FLAGS +=	PREFIX=${TRUEPREFIX}

TEST_TARGET =	test
TEST_DEPENDS =	devel/check
TEST_FLAGS +=	QUIET=
TEST_FLAGS +=	HOME=${HOME}
TEST_IS_INTERACTIVE =X11

.include <bsd.port.mk>
