# $OpenBSD: Makefile,v 1.8 2002/05/15 18:05:19 espie Exp $

COMMENT=		"GNOME version of top"
V=			1.0.13
DISTNAME=		gtop-${V}
CATEGORIES=		x11
NEED_VERSION=   	1.473
MAINTAINER=		Nils Nordman <nino@nforced.com>

HOMEPAGE=		http://www.gnome.org
MASTER_SITES=		${MASTER_SITE_GNOME:=stable/sources/gtop/}

PATCH_LIST=             ${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig \
                        ${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh \
                        patch-*

LIB_DEPENDS=		gnome.36,art_lgpl,gnomeui::x11/gnome/libs \
			gtop,gtop_common,gtop_sysdeps::devel/libgtop,gnome

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

.include <bsd.port.mk>
