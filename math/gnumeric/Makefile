# $OpenBSD: Makefile,v 1.14 2006/01/18 21:07:59 steven Exp $

COMMENT=		"spreadsheet application for GNOME"

VERSION=		1.4.3
DISTNAME=		gnumeric-${VERSION}
PKGNAME=		${DISTNAME}p2

CATEGORIES=    		math x11/gnome

HOMEPAGE=		http://www.gnome.org/projects/gnumeric/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE ORBit-2 ORBitCosNaming-2 SM X11 Xext Xft \
			Xrender art_lgpl_2 atk-1.0.0.0 audiofile \
			bonobo-2 bonobo-activation bonoboui-2 bz2 c crypto \
			esd fontconfig freetype gconf-2 gdk-x11-2.0.0.0 \
			gdk_pixbuf-2.0.0.0 glade-2.0.0.0 glib-2.0.0.0 \
			gmodule-2.0.0.0 gnome-2 gnome-keyring gnomecanvas-2 \
			gnomeprint-2-2 gnomevfs-2 gobject-2.0.0.0 \
			gthread-2.0.0.0 gtk-x11-2.0.0.0 jpeg m pango-1.0.0.0 \
			pangoft2-1.0.0.0 pangox-1.0.0.0 pangoxft-1.0.0.0 \
			popt pthread ssl xml2 z

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnumeric/1.4/}

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:scrollkeeper-*:textproc/scrollkeeper \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
RUN_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper
LIB_DEPENDS=		gnomeui-2::x11/gnome/libgnomeui \
			gnomeprintui-2-2::x11/gnome/libgnomeprintui \
			gsf-1.11,gsf-gnome-1.11::devel/libgsf,-gnome

USE_X11=		Yes
USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+=	--with-gnome
CONFIGURE_ARGS+=	--without-gda
CONFIGURE_ARGS+=	--without-gb
CONFIGURE_ARGS+=	--without-guile
CONFIGURE_ARGS+=	--without-psiconv
CONFIGURE_ARGS+=	--without-paradox
CONFIGURE_ARGS+=	--without-long-double
CONFIGURE_ARGS+=	--without-python
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gnumeric
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
SUBST_VARS=		VERSION

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
