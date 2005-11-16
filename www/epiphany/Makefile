# $OpenBSD: Makefile,v 1.5 2005/11/16 09:37:00 wilfried Exp $

COMMENT=	"extremely lightweight and simple web browser for gnome"

M=		1.4
V=		1.4.8
DISTNAME=	epiphany-${V}
PKGNAME=	${DISTNAME}p1
CATEGORIES=	www

HOMEPAGE=	http://www.gnome.org/projects/epiphany/

MAINTAINER=	Igor Boehm <igor@bytelabs.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_GNOME:=sources/epiphany/$M/}
EXTRACT_SUFX=	.tar.bz2

MOZDIR=		mozilla

BUILD_DEPENDS=	:mozilla-devel->=1.7.11:www/mozilla,-devel \
		:pkgconfig-*:devel/pkgconfig \
		:p5-XML-Parser-*:textproc/p5-XML-Parser \
		:scrollkeeper-*:textproc/scrollkeeper
RUN_DEPENDS=	:gnome-desktop-*:x11/gnome/desktop \
		:gnome-themes-*:x11/gnome/themes \
		:gnome-icon-theme-*:x11/gnome/icon-theme
LIB_DEPENDS=	gnomeui-2::x11/gnome/libgnomeui \
		${MOZDIR}/gtkembedmoz,${MOZDIR}/nspr4,${MOZDIR}/plc4,${MOZDIR}/plds4,${MOZDIR}/xpcom:mozilla->=1.7.11:www/mozilla

WANTLIB=	ORBit-2 ORBitCosNaming-2 art_lgpl_2 atk-1.0.0.0 \
		audiofile bonobo-2 bonobo-activation bonoboui-2 esd \
		gconf-2 gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 glade-2.0.0.0 \
		glib-2.0.0.0 gmodule-2.0.0.0 gtk-x11-2.0.0.0 iconv \
		intl jpeg gnome-2 gnome-keyring gnomecanvas-2 \
		gnomevfs-2 gobject-2.0.0.0 gthread-2.0.0.0 pango-1.0.0.0 \
		pangoft2-1.0.0.0 pangocairo-1.0.0.0 cairo glitz png \
		popt xml2 ICE SM X11 Xext Xrender c crypto fontconfig \
		freetype m pthread ssl stdc++ z

USE_GMAKE=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS+=${CONFIGURE_SHARED}
CONFIGURE_ARGS+=--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/epiphany \
		--program-suffix=-bin \
		--disable-schemas-install
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/${MOZDIR} -L${LOCALBASE}/lib"

SUBST_VARS+=	M

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

post-install:
	@rm -f ${PREFIX}/bin/epiphany
	${INSTALL_SCRIPT} ${FILESDIR}/epiphany ${PREFIX}/bin
	@perl -pi -e 's|%%LOCALBASE%%|${LOCALBASE}|g;' \
		-e 's|%%MOZDIR%%|${MOZDIR}|g;'\
		 ${PREFIX}/bin/epiphany

.include <bsd.port.mk>
