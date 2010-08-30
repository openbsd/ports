# $OpenBSD: Makefile,v 1.11 2010/08/30 17:46:57 fgsch Exp $

COMMENT=		GTK frontend to recordMyDesktop

V=			0.3.8
DISTNAME=		gtk-recordmydesktop-${V}
PKGNAME=		recordmydesktop-gtk-${V}
REVISION =		3

BUILD_DEPENDS=		::x11/py-gtk2
RUN_DEPENDS=		::devel/desktop-file-utils \
			::devel/gettext \
			:recordmydesktop->=0.3.8.1:multimedia/recordmydesktop/base \
			::x11/py-gtk2

MODULES=		lang/python \
			textproc/intltool

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib"

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/gtk-recordMyDesktop.in

.include <bsd.port.mk>
