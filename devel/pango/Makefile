# $OpenBSD: Makefile,v 1.32 2008/11/22 15:08:11 jasper Exp $

COMMENT=		library for layout and rendering of text

DISTNAME=		pango-1.22.2
PKGNAME=		${DISTNAME}p0
SHARED_LIBS += pango-1.0	   1800.0    # .2202.0
SHARED_LIBS += pangox-1.0	   1800.0    # .2202.0
SHARED_LIBS += pangoft2-1.0	   1800.0    # .2202.0
SHARED_LIBS += pangoxft-1.0	   1800.0    # .2202.0
SHARED_LIBS += pangocairo-1.0	   1800.0    # .2202.0
CATEGORIES=		devel x11

HOMEPAGE=		http://www.gtk.org/

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	X11 Xau Xdmcp Xft Xrender c expat fontconfig freetype \
		glitz m pcre pixman-1 png z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/pango/1.22/}
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

LIB_DEPENDS=		glib-2.0.>=1800.0,gmodule-2.0.>=1800.0,gobject-2.0.>=1800.0::devel/glib2 \
			cairo.>=9::graphics/cairo

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ENV=		CPPFLAGS="-I${X11BASE}/include"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/pango; \
	cp -Rp ${WRKINST}/${SYSCONFDIR}/pango/* ${PREFIX}/share/examples/pango/

do-regress:
	cd ${WRKSRC}/tests && ${MAKE} check

.include <bsd.port.mk>
