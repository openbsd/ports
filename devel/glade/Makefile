# $OpenBSD: Makefile,v 1.7 2001/11/15 01:22:02 pvalchev Exp $

COMMENT=		"free user interface builder for GTK+ and GNOME"
V=			0.6.2
DISTNAME=		glade-${V}
CATEGORIES=		devel
NEED_VERSION=   	1.497
HOMEPAGE=		http://glade.gnome.org
MAINTAINER=		Nils Nordman <nino@nforced.com>

MASTER_SITES=		${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= 	stable/sources/glade

PATCH_LIST=             ${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltconfig \
                        ${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltmain_sh \
                        patch-*

LIB_DEPENDS=		gtk.1.2,gdk.1.2::x11/gtk+
BUILD_DEPENDS=		:scrollkeeper-*:textproc/scrollkeeper
RUN_DEPENDS=		:automake->=1.4:devel/automake \
			:autoconf->=2.13:devel/autoconf \
			:scrollkeeper-*:textproc/scrollkeeper

FLAVORS=		gnome
FLAVOR?=

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.if ${FLAVOR:L:Mgnome}
LIB_DEPENDS+=		gnome.36,art_lgpl.4,gnomesupport.0,gnomeui.46::x11/gnome/libs
.else
CONFIGURE_ARGS+=	--disable-gnome
.endif

.include <bsd.port.mk>
