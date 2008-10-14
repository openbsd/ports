# $OpenBSD: Makefile,v 1.3 2008/10/14 07:36:00 ajacoutot Exp $

COMMENT=		GTK frontend to recorMyDesktop

V=			0.3.7.2
DISTNAME=		gtk-recordmydesktop-$V
PKGNAME=		recordmydesktop-gtk-$Vp1

BUILD_DEPENDS=		::x11/py-gtk2
RUN_DEPENDS=		::devel/desktop-file-utils \
			::devel/gettext \
			::multimedia/recordmydesktop/base \
			::x11/py-gtk2

MODULES=		lang/python \
			textproc/intltool

USE_GMAKE=		Yes

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=          CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
                        LDFLAGS="-L${LOCALBASE}/lib" \
			PYTHON="${MODPY_BIN}"

SUBST_VARS=		MODPY_BIN

pre-configure:
	${SUBST_CMD} ${WRKSRC}/src/gtk-recordMyDesktop.in

.include <bsd.port.mk>
