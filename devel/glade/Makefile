# $OpenBSD: Makefile,v 1.5 2001/10/24 12:13:44 espie Exp $

COMMENT=		"free user interface builder for GTK+ and GNOME"
V=			0.5.11
DISTNAME=		glade-${V}
CATEGORIES=		devel
NEED_VERSION=   	1.474
HOMEPAGE=		http://glade.gnome.org
MAINTAINER=		Nils Nordman <nino@nforced.com>

MASTER_SITES=		${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= 	stable/sources/glade

PATCH_LIST=             ${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltconfig \
                        ${PORTSDIR}/infrastructure/patches/patch-lt1.3.4-ltmain_sh \
                        patch-*

LIB_DEPENDS=		gtk.1.2,gdk.1.2::x11/gtk+
RUN_DEPENDS=  		::devel/automake \
			::devel/autoconf

FLAVORS=		gnome
FLAVOR?=

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
