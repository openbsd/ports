# $OpenBSD: Makefile,v 1.2 1999/06/14 03:23:04 brad Exp $

DISTNAME=	fnlib-0.4
CATEGORIES=    	graphics
MASTER_SITES=	${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= gnome-1.0/sources

NEED_VERSION=	1.73

MAINTAINER=	op21@squish.org

LIB_DEPENDS=	Imlib.1.9:${PORTSDIR}/graphics/imlib

USE_X11=	yes
USE_GMAKE=	yes
SEPARATE_BUILD= concurrent
GNU_CONFIGURE=	yes 
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	${LDCONFIG} -m ${PREFIX}/lib
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
