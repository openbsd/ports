COMMENT-main=	SSH and telnet client
COMMENT-gui=	PuTTY GUI clients

V=		0.84
DISTNAME=	putty-$V
PKGNAME-main=	${DISTNAME}
PKGNAME-gui=	${DISTNAME:S/putty/putty-gui/}
CATEGORIES=	net security

HOMEPAGE=	https://putty.software/
SITES=		https://the.earth.li/~sgtatham/putty/$V/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c m

WANTLIB-gui += ${WANTLIB}
WANTLIB-gui += ICE SM X11 Xext Xrender atk-1.0 cairo cairo-gobject
WANTLIB-gui += gdk_pixbuf-2.0 gdk-3 gio-2.0 glib-2.0 gobject-2.0
WANTLIB-gui += gtk-3 harfbuzz intl pango-1.0 pangocairo-1.0

MODULES=		devel/cmake

MULTI_PACKAGES=		-main -gui

LIB_DEPENDS-gui=	devel/gettext,-runtime \
			x11/gtk+3

NO_TEST=		Yes

.include <bsd.port.mk>
