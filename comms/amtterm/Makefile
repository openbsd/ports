# $OpenBSD: Makefile,v 1.4 2017/07/04 11:09:44 sthen Exp $

COMMENT-term=	cli client for Intel AMT serial-over-lan
COMMENT-main=	client and tools for Intel AMT serial-over-lan

V=		1.4
DISTNAME=	amtterm-$V
REVISION=	0
PKGNAME-main=	amtterm-$V
PKGNAME-term=	amtterm-cli-$V
MULTI_PACKAGES=	-main -term

CATEGORIES=	comms sysutils net

HOMEPAGE=	https://www.kraxel.org/blog/linux/amtterm/

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB-term=	c
WANTLIB-main=	${MODGETTEXT_WANTLIB} c gio-2.0 glib-2.0 gobject-2.0
WANTLIB-main += atk-1.0 cairo gdk-x11-2.0 gdk_pixbuf-2.0 gtk-x11-2.0
WANTLIB-main += pango-1.0 pangocairo-1.0 pangoft2-1.0 png vte
WANTLIB-main += GL X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB-main += Xrandr Xrender expat fontconfig freetype m pixman-1
WANTLIB-main += pthread pthread-stubs xcb xcb-render xcb-shm z

MASTER_SITES=	https://www.kraxel.org/releases/amtterm/

MODULES=	devel/gettext
LIB_DEPENDS-term=
LIB_DEPENDS-main= ${MODGETTEXT_LIB_DEPENDS} \
		devel/vte
RUN_DEPENDS-main= comms/amtterm,-term \
		devel/desktop-file-utils \
		www/p5-SOAP-Lite

MAKE_FLAGS=	verbose=yes
FAKE_FLAGS=	mandir=${WRKINST}${PREFIX}/man

USE_GMAKE=	Yes

NO_TEST=	Yes

MAKE_FILE=	GNUmakefile

pre-configure:
	cp ${FILESDIR}/Make.config ${WRKSRC}/

.include <bsd.port.mk>
