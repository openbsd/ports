# $OpenBSD: Makefile,v 1.10 2000/03/03 13:01:49 turan Exp $

DISTNAME=	fnlib-0.5
CATEGORIES=    	graphics
MASTER_SITES=	ftp://beaver.its.vu.edu.au/pub/enlightenment/enlightenment/libs/ \
		http://mirror.nucba.ac.jp/mirror/enlightenment/enlightenment/libs/ \
		ftp://ftp.dti.ad.jp/pub/X/enlightenment/fnlib/ \
		ftp://ftp.squish.org/pub/enlightenment/fnlib/

NEED_VERSION=	1.73

MAINTAINER=	op21@squish.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

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
