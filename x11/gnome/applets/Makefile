# $OpenBSD: Makefile,v 1.1.1.1 2001/09/13 21:23:08 todd Exp $

COMMENT=		"applets for use with the GNOME panel"
V=			1.4.0.1
DISTNAME=		gnome-applets-${V}
CATEGORIES=		x11
NEED_VERSION=   	1.384
HOMEPAGE=		http://www.gnome.org
MAINTAINER=		Nils Nordman <nino@nforced.com>

MASTER_SITES=		${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= 	stable/sources/gnome-applets

LIB_DEPENDS=		panel_applet::x11/gnome/core \
			gtop::devel/libgtop,gnome

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	@install -d ${PREFIX}/share/gnome-applets; \
	cp -r ${PREFIX}/../../etc/* ${PREFIX}/share/gnome-applets/

.include <bsd.port.mk>
