# $OpenBSD: Makefile,v 1.4 2004/10/20 14:48:11 naddy Exp $

COMMENT=		"Lightweight GNOME text editor"
DISTNAME=		gedit-2.6.2	
CATEGORIES=		editors x11/gnome

HOMEPAGE=		http://www.gnome.org/	

MAINTAINER=		Thomas Delaet <thomas@delaet.org>	

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gedit/2.6/}	
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser \
			:scrollkeeper-*:textproc/scrollkeeper
LIB_DEPENDS=		aspell.15.2::textproc/aspell/core \
			eel-2::x11/gnome/eel \
			gnomeprintui-2-2::x11/gnome/libgnomeprintui \
			gnomeui-2::x11/gnome/libgnomeui \
			gtksourceview-1.0.0.0::x11/gtksourceview
RUN_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper
			

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib -lm -lstdc++ -lintl -liconv"

CONFIGURE_ARGS+=	${CONFIGURE_SHARED}
CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/gedit \
			--disable-schemas-install

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
