# $OpenBSD: Makefile,v 1.4 2004/12/10 20:36:43 marcm Exp $

COMMENT=		"Eye of GNOME: an image viewing and cataloging program"
DISTNAME=		eog-2.8.2
CATEGORIES=		graphics x11/gnome

HOMEPAGE=		http://www.gnome.org/	

MAINTAINER=		Thomas Delaet <thomas@delaet.org>	

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/eog/2.8/}	
EXTRACT_SUFX=		.tar.bz2

MODULES=		devel/gettext

BUILD_DEPENDS=		:pkgconfig-*:devel/pkgconfig \
			:p5-XML-Parser-*:textproc/p5-XML-Parser \
			:scrollkeeper-*:textproc/scrollkeeper
LIB_DEPENDS=		eel-2::x11/gnome/eel \
			gnomeui-2::x11/gnome/libgnomeui \
			gnomeprintui-2-2::x11/gnome/libgnomeprintui
RUN_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper
			

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu
CONFIGURE_ENV+=		CPPFLAGS="-I${LOCALBASE}/include"
CONFIGURE_ENV+=		LDFLAGS="-L${LOCALBASE}/lib"

CONFIGURE_ARGS+=	--with-gconf-schema-file-dir=${LOCALBASE}/share/schemas/eog \
			--disable-schemas-install

FLAVORS=		exif
FLAVOR?=

.if ${FLAVOR:L:Mexif}
CONFIGURE_ARGS+=	--with-libexif
LIB_DEPENDS+=		exif::graphics/libexif
.else
CONFIGURE_ARGS+=	--without-libexif
.endif

post-patch:
	@ln -s /usr/bin/true ${WRKDIR}/bin/scrollkeeper-update

.include <bsd.port.mk>
