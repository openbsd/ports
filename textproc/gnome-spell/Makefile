# $OpenBSD: Makefile,v 1.8 2006/08/03 23:55:11 espie Exp $

COMMENT=		"a Gnome/Bonobo component for spell checking"

VERSION=		1.0.6
DISTNAME=		gnome-spell-${VERSION}
PKGNAME=		${DISTNAME}p2
CATEGORIES=    		textproc

HOMEPAGE=		http://www.gnome.org/

MAINTAINER=		Marc Matteo <marcm@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 \
			fontconfig freetype m stdc++ z popt xml2 \
			ORBit-2 art_lgpl_2 atk-1.0.0.0 gconf-2 \
			bonobo-2 bonobo-activation bonoboui-2 \
			glib-2.0.0.0 gmodule-2.0.0.0 gobject-2.0.0.0 gthread-2.0.0.0 \
			pango-1.0.0.0 pangoft2-1.0.0.0 pangocairo-1.0.0.0 \
			gdk-x11-2.0.0.0 gdk_pixbuf-2.0.0.0 gtk-x11-2.0.0.0 \
			glade-2.0.0.0 gnome-2 gnomecanvas-2 gnomevfs-2 cairo

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gnome-spell/1.0/}

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser
LIB_DEPENDS=		aspell.>=15::textproc/aspell/core \
			gnomeui-2::x11/gnome/libgnomeui

CONFIGURE_STYLE=	gnu
CONFIGURE_ENV=		CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"
SUBST_VARS=		VERSION

post-install:
	sed -e "s,@LOCALBASE@,${LOCALBASE},g" ${WRKSRC}/gnome-spell/GNOME_Spell.server > ${PREFIX}/lib/bonobo/servers/GNOME_Spell.server

.include <bsd.port.mk>
