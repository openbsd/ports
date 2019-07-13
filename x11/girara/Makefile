# $OpenBSD: Makefile,v 1.21 2019/07/13 22:12:09 naddy Exp $

COMMENT =	user interface library from pwmt
DISTNAME =	girara-0.3.2

SHARED_LIBS +=	girara-gtk3 1.0 # 3.1
EXTRACT_SUFX =	.tar.xz

CATEGORIES =	x11
HOMEPAGE =	https://pwmt.org/projects/girara/

# zlib
PERMIT_PACKAGE =Yes

WANTLIB += atk-1.0 cairo cairo-gobject gdk-3 gdk_pixbuf-2.0 gio-2.0 glib-2.0 
WANTLIB += gobject-2.0 gtk-3 intl json-c m pango-1.0 pangocairo-1.0 

MASTER_SITES =	https://pwmt.org/projects/girara/download/
MODULES =	devel/meson

BUILD_DEPENDS =	devel/gettext,-tools
LIB_DEPENDS =	x11/gtk+3 \
		devel/json-c

CONFIGURE_ARGS +=	-Ddocs=disabled \
			-Dtests=disabled

# c11
COMPILER =	base-clang ports-gcc
COMPILER_LANGS =	c

TEST_TARGET =	test
TEST_DEPENDS =	devel/check
TEST_FLAGS +=	VERBOSE=1
TEST_FLAGS +=	HOME=${WRKDIR}
TEST_IS_INTERACTIVE =X11

.include <bsd.port.mk>
