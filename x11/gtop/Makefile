# $OpenBSD: Makefile,v 1.9 2002/09/20 08:15:16 nino Exp $

COMMENT=		"GNOME version of top"

DISTNAME=		gtop-1.0.13
CATEGORIES=		x11

MAINTAINER=		Nils Nordman <nino@nforced.com>
HOMEPAGE=		http://www.gnome.org

MASTER_SITES=		${MASTER_SITE_GNOME:=sources/gtop/1.0/}

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
