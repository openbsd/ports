# $OpenBSD: Makefile,v 1.5 1999/10/29 02:24:28 brad Exp $

DISTNAME=	fnlib-0.4
CATEGORIES=    	graphics
MASTER_SITES=	http://mirror.nucba.ac.jp/mirror/enlightenment/enlightenment/ \
		ftp://ftp.leirianet.pt/pub/X11/enlightenment/enlightenment/ \
		ftp://ftp.dti.ad.jp/pub/X/enlightenment/enlightenment/ \
		ftp://mirror.nucba.ac.jp/mirror/enlightenment/enlightenment/

NEED_VERSION=	1.73

MAINTAINER=	op21@squish.org

LIB_DEPENDS=	Imlib.19:${PORTSDIR}/graphics/imlib

USE_X11=	yes
USE_GMAKE=	yes
SEPARATE_BUILD= concurrent
GNU_CONFIGURE=	yes 
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	@${LDCONFIG} -m ${PREFIX}/lib
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
