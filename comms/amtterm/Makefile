# $OpenBSD: Makefile,v 1.9 2019/07/12 20:43:46 sthen Exp $

COMMENT-term=	cli client for Intel AMT serial-over-lan
COMMENT-main=	client and tools for Intel AMT serial-over-lan

V=		1.4
DISTNAME=	amtterm-$V
REVISION=	4
PKGNAME-main=	amtterm-$V
PKGNAME-term=	amtterm-cli-$V
MULTI_PACKAGES=	-main -term

CATEGORIES=	comms sysutils net

HOMEPAGE=	https://www.kraxel.org/blog/linux/amtterm/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB-term += c
WANTLIB-main += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB-main += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB-main += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB-main += gtk-x11-2.0 intl pango-1.0 pangocairo-1.0 pangoft2-1.0
WANTLIB-main += vte z

MASTER_SITES=	https://www.kraxel.org/releases/amtterm/

LIB_DEPENDS-term=
LIB_DEPENDS-main= devel/gettext,-runtime \
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
