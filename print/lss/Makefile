# $OpenBSD: Makefile,v 1.1.1.1 2008/04/13 17:45:43 jasper Exp $

COMMENT=		LaTeX symbols selector

DISTNAME=		lss-0.1.6
CATEGORIES=		print x11

HOMEPAGE=		http://clay.ll.pl/lss/

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}

MODULES=		devel/gettext

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype glib-2.0 glitz gmodule-2.0 gobject-2.0 m pango-1.0 \
		pangocairo-1.0 pangoft2-1.0 png z

LIB_DEPENDS=		xml2::textproc/libxml \
			gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2
RUN_DEPENDS=		::devel/desktop-file-utils

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-extract:
	@perl -pi -e 's,/usr,${LOCALBASE},g' ${WRKSRC}/po/Makefile.in

.include <bsd.port.mk>
