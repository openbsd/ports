# $OpenBSD: Makefile,v 1.1.1.1 2015/09/30 11:29:13 jasper Exp $

COMMENT=		presenter console with multi-monitor support

GH_ACCOUNT=		pdfpc
GH_PROJECT=		pdfpc
GH_TAGNAME=		v4.0.0
DISTNAME=		${GH_PROJECT}-${GH_TAGNAME}
PKGNAME=		${DISTNAME:S/v//}

CATEGORIES=		textproc

HOMEPAGE=		https://pdfpc.github.io/

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@openbsd.org> 

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

MODULES=		devel/cmake \
			devel/gettext

WANTLIB += atk-1.0 c cairo cairo-gobject gdk-3 gdk_pixbuf-2.0
WANTLIB += gee-0.8 gio-2.0 glib-2.0 gobject-2.0 gthread-2.0 gtk-3
WANTLIB += gstbase-1.0 gstreamer-1.0 gstvideo-1.0 m pango-1.0
WANTLIB += pangocairo-1.0 poppler-glib pthread

BUILD_DEPENDS=		lang/vala
LIB_DEPENDS=		devel/libgee \
			multimedia/gstreamer1/plugins-base \
			print/poppler

NO_TEST=		Yes

# XXX: Remove on upgrade
post-extract:
	mkdir -p ${WRKSRC}/cmake/vala/
	cp ${FILESDIR}/*.cmake ${WRKSRC}/cmake/vala/

.include <bsd.port.mk>
