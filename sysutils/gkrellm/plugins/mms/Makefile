# $OpenBSD: Makefile,v 1.27 2011/09/16 11:41:39 espie Exp $

COMMENT=	XMMS plugin for Gkrellm2

DISTNAME=	gkrellmms-2.1.21
REVISION=	16
CATEGORIES=	audio

HOMEPAGE=	http://gkrellm.luon.net/gkrellmms.phtml

MASTER_SITES=	http://gkrellm.luon.net/files/

LIB_DEPENDS+=	audio/xmms

MODULES =	devel/gettext

WRKDIST=	${WRKDIR}/gkrellmms
ALL_TARGET=	gkrellmms.so
PLUGIN=		${WRKSRC}/gkrellmms.so

WANTLIB += X11 Xcomposite Xcursor Xdamage Xext Xfixes Xi Xinerama
WANTLIB += Xrandr Xrender atk-1.0 cairo expat fontconfig freetype
WANTLIB += gdk gdk-x11-2.0 gdk_pixbuf-2.0 gio-2.0 glib glib-2.0
WANTLIB += gmodule gmodule-2.0 gobject-2.0 gthread-2.0 gtk gtk-x11-2.0
WANTLIB += m pango-1.0 pangocairo-1.0 pangoft2-1.0 xmms z

.include <bsd.port.mk>
