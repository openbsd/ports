# $OpenBSD: Makefile,v 1.27 2019/07/12 20:51:11 sthen Exp $

COMMENT=		GTK+2 graphical filemanager

DISTNAME=		gentoo-0.19.13
REVISION=		0

CATEGORIES=		x11

HOMEPAGE=		http://www.obsession.se/gentoo/

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=gentoo/}

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 c cairo fontconfig freetype
WANTLIB += gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib-2.0 gobject-2.0
WANTLIB += gthread-2.0 gtk-x11-2.0 intl m pango-1.0 pangocairo-1.0
WANTLIB += pangoft2-1.0 pthread z

LIB_DEPENDS=		x11/gtk+2

CONFIGURE_STYLE=	gnu
NO_TEST=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/buttons.c

pre-install:
	@chmod +x ${WRKSRC}/install-sh

post-install:
	${INSTALL_MAN} ${WRKSRC}/docs/gentoo.1x ${PREFIX}/man/man1/gentoo.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gentoo
.for i in gentoorc gentoogtkrc
	${INSTALL_DATA} ${WRKSRC}/$i ${PREFIX}/share/examples/gentoo
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/gentoo
	@cd ${WRKSRC}/docs && \
		tar cf - . | (cd ${PREFIX}/share/doc/gentoo; tar xf -) && \
		rm -f ${PREFIX}/share/doc/gentoo/gentoo.1x

.include <bsd.port.mk>
