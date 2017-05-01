# $OpenBSD: Makefile,v 1.25 2017/05/01 20:26:59 sthen Exp $

COMMENT-main=	SSH and telnet client
COMMENT-gui=	PuTTY GUI clients

V=		0.69
DISTNAME=	putty-$V
REVISION=	0
PKGNAME-main=	${DISTNAME}
PKGNAME-gui=	${DISTNAME:S/putty/putty-gui/}
CATEGORIES=	net security

HOMEPAGE=	http://www.chiark.greenend.org.uk/~sgtatham/putty/
MASTER_SITES=	http://the.earth.li/~sgtatham/putty/$V/ \
		ftp://ftp.chiark.greenend.org.uk/users/sgtatham/putty-$V/

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c pthread

WANTLIB-gui+=	X11 atk-1.0 cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB-gui+=	gio-2.0 glib-2.0 gobject-2.0 gtk-3 intl pango-1.0
WANTLIB-gui+=	pangocairo-1.0 ${WANTLIB}

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I.././" \
			LDFLAGS="-L${X11BASE}/lib"
MAKE_FLAGS=		WARNINGOPTS=-Wall # strip upstream's usual -Werror for clang
WRKSRC=			${WRKDIST}/unix

MULTI_PACKAGES=		-main -gui

LIB_DEPENDS-gui=	devel/gettext \
			x11/gtk+3

NO_TEST=		Yes

.include <bsd.port.mk>
