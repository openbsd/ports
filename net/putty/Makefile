COMMENT-main=	SSH and telnet client
COMMENT-gui=	PuTTY GUI clients

V=		0.81
DISTNAME=	putty-$V
PKGNAME-main=	${DISTNAME}
PKGNAME-gui=	${DISTNAME:S/putty/putty-gui/}
CATEGORIES=	net security

HOMEPAGE=	https://www.chiark.greenend.org.uk/~sgtatham/putty/
SITES=		https://the.earth.li/~sgtatham/putty/$V/ \
		ftp://ftp.chiark.greenend.org.uk/users/sgtatham/putty-$V/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += c m

WANTLIB-gui += ${WANTLIB}
WANTLIB-gui += ICE SM X11 Xext atk-1.0 cairo cairo-gobject gdk-3
WANTLIB-gui += gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0 gtk-3
WANTLIB-gui += harfbuzz intl pango-1.0 pangocairo-1.0

MODULES=		devel/cmake

MULTI_PACKAGES=		-main -gui

LIB_DEPENDS-gui=	devel/gettext,-runtime \
			x11/gtk+3

NO_TEST=		Yes

.include <bsd.port.arch.mk>
.if !${PROPERTIES:Mclang}
CFLAGS +=	-std=gnu99
.endif

.include <bsd.port.mk>
