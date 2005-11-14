# $OpenBSD: Makefile,v 1.11 2005/11/14 23:03:45 wilfried Exp $


COMMENT=		"GNOME display manager"

DISTNAME=		gdm-2.6.0.9
PKGNAME=		${DISTNAME}p1
CATEGORIES=		x11/gnome

HOMEPAGE=		http://www.jirka.org/gdm.html

# LGPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	ICE ORBit-2 ORBitCosNaming-2 SM X11 Xi Xext \
		Xinerama Xrender art_lgpl_2 atk-1.0.0.0 audiofile bonobo-2 \
		bonobo-activation bonoboui-2 bz2 c cairo crypto esd fontconfig \
		freetype gconf-2 gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 \
		glade-2.0.0.0 glib-2.0.0.0 glitz gmodule-2.0.0.0 gnome-2 \
		gnome-keyring gnomecanvas-2 gnomevfs-2 gobject-2.0.0.0 gsf-1 \
		gthread-2.0.0.0 gtk-x11-2.0.0.0 iconv intl jpeg m \
		pango-1.0.0.0 pangocairo-1.0.0.0 pangoft2-1.0.0.0 \
		png popt pthread ssl util xml2 z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gdm/2.6/}
EXTRACT_SUFX=		.tar.bz2

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:scrollkeeper-*:textproc/scrollkeeper \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
RUN_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper \
			:hicolor-icon-theme-*:x11/hicolor-icon-theme
LIB_DEPENDS=		gnomeui-2::x11/gnome/libgnomeui \
			rsvg-2::x11/gnome/librsvg

CONFDIR=		${SYSCONFDIR}/X11
USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu old
CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--sysconfdir="${CONFDIR}"
CONFIGURE_ARGS+=	--localstatedir=/var
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include -I${X11BASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
SUBST_VARS=		CONFDIR

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

post-install:
	@${INSTALL_DATA_DIR} ${PREFIX}/share/examples/gdm; \
	cp -Rp ${WRKINST}/${CONFDIR}/* ${PREFIX}/share/examples/gdm/

.include <bsd.port.mk>
