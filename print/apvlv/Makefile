# $OpenBSD: Makefile,v 1.17 2017/07/26 22:45:28 sthen Exp $

COMMENT=	lightweight PDF document viewer with vi bindings

GH_ACCOUNT =	naihe2010
GH_PROJECT =	apvlv
GH_COMMIT =	9ab76264c7818097a38e69a2d7d6b47199fffc1f
DISTNAME=	apvlv-0.1.5pl0
CATEGORIES=	print
HOMEPAGE=	https://naihe2010.github.io/apvlv/
REVISION=	0

# GPLv2
PERMIT_PACKAGE_CDROM=   Yes

MODULES=	devel/gettext \
		devel/cmake

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gio-2.0 glib-2.0 gobject-2.0 gthread-2.0 gtk-3 m pango-1.0
WANTLIB += pangocairo-1.0 poppler-glib pthread ${COMPILER_LIBCXX}

LIB_DEPENDS=	x11/gtk+3 \
		print/poppler

CONFIGURE_ARGS=-DMANDIR=${PREFIX}/man

.include <bsd.port.mk>
