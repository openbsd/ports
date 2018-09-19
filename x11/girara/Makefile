# $OpenBSD: Makefile,v 1.17 2018/09/19 09:35:19 landry Exp $

COMMENT =	user interface library from pwmt
DISTNAME =	girara-0.3.0

SHARED_LIBS +=	girara-gtk3 1.0 # 3.1
EXTRACT_SUFX =	.tar.xz

CATEGORIES =	x11
HOMEPAGE =	http://pwmt.org/projects/girara/

# zlib
PERMIT_PACKAGE_CDROM =Yes

WANTLIB += gdk-3 gio-2.0 glib-2.0 gobject-2.0 gtk-3 intl json-c
WANTLIB += notify pango-1.0

MASTER_SITES =	http://pwmt.org/projects/girara/download/
MODULES =	devel/meson

BUILD_DEPENDS =	devel/gettext-tools
LIB_DEPENDS =	x11/gtk+3 \
		devel/json-c \
		devel/libnotify

# c11
COMPILER =	base-clang ports-gcc
COMPILER_LANGS =	c

LDFLAGS=	-L${X11BASE}/lib -L${LOCALBASE}/lib

TEST_TARGET =	test
TEST_DEPENDS =	devel/check
TEST_FLAGS +=	VERBOSE=1
TEST_FLAGS +=	HOME=${WRKDIR}
TEST_IS_INTERACTIVE =X11

.include <bsd.port.mk>
