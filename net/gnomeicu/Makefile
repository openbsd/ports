# $OpenBSD: Makefile,v 1.2 2001/09/14 14:41:30 todd Exp $

COMMENT=		"GNOME icq client"
V=			0.96.1
DISTNAME=		gnomeicu-${V}
CATEGORIES=		net
NEED_VERSION=   	1.455
HOMEPAGE=		http://gnomeicu.sourceforge.net
MAINTAINER=		Nils Nordman <nino@nforced.com>

MASTER_SITES=		${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= 	stable/sources/gnomeicu

LIB_DEPENDS=		panel_applet::x11/gnome/core

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
USE_GMAKE=		Yes
CONFIGURE_STYLE= 	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ENV=  	CPPFLAGS="-I${LOCALBASE}/include" \
			LDFLAGS="-L${LOCALBASE}/lib -liconv"

post-install:
	@cp -r ${PREFIX}/../../etc/* ${PREFIX}/share/gnomeicu/

.include <bsd.port.mk>
