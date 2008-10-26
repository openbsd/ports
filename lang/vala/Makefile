# $OpenBSD: Makefile,v 1.7 2008/10/26 17:24:16 jasper Exp $

COMMENT=		compiler for the GObject type system

GNOME_PROJECT=		vala
GNOME_VERSION=		0.3.5
SHARED_LIBS +=	vala                 0.2      # .0.0
CATEGORIES=		lang

HOMEPAGE=		http://live.gnome.org/Vala

# LGPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=	X11 Xau Xcomposite Xcursor Xdamage Xdmcp Xext Xfixes \
		Xi Xinerama Xrandr Xrender atk-1.0 c cairo expat fontconfig \
		freetype glib-2.0 glitz gmodule-2.0 gobject-2.0 gthread-2.0 \
		m pango-1.0 pangocairo-1.0 pangoft2-1.0 pcre pixman-1 png \
		pthread z

MODULES=		devel/gettext \
			x11/gnome

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		::textproc/libxslt \
			::textproc/p5-XML-LibXML
LIB_DEPENDS=		gdk_pixbuf-2.0,gdk-x11-2.0,gtk-x11-2.0::x11/gtk+2
REGRESS_DEPENDS=	::shells/bash	

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--enable-gen-project \
			--enable-vapigen
CONFIGURE_ENV+= 	LDFLAGS="-L${LOCALBASE}/lib" \
			CPPFLAGS="-I${LOCALBASE}/include"

pre-regress:
	${SUBST_CMD} ${WRKSRC}/tests/testrunner.sh
	chmod +x ${WRKSRC}/tests/testrunner.sh

.include <bsd.port.mk>
