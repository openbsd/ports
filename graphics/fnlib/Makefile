# $OpenBSD: Makefile,v 1.11 2000/03/05 18:30:28 espie Exp $

DISTNAME=	fnlib-0.5
CATEGORIES=    	graphics
NEED_VERSION=	1.223
MASTER_SITES=	ftp://beaver.its.vu.edu.au/pub/enlightenment/enlightenment/libs/ \
		http://mirror.nucba.ac.jp/mirror/enlightenment/enlightenment/libs/ \
		ftp://ftp.dti.ad.jp/pub/X/enlightenment/fnlib/ \
		ftp://ftp.squish.org/pub/enlightenment/fnlib/

MAINTAINER=	op21@squish.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	Imlib.19:graphics/imlib

USE_X11=	Yes
USE_GMAKE=	Yes
SEPARATE_BUILD= concurrent
GNU_CONFIGURE=	Yes 
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ENV=	CPPFLAGS="-I${LOCALBASE}/include" \
		LDFLAGS="-L${LOCALBASE}/lib"

post-install:
	@${LDCONFIG} -m ${PREFIX}/lib
	@PKG_PREFIX="${PREFIX}" ${SH} ${PKGDIR}/INSTALL ${DISTNAME} POST-INSTALL

.include <bsd.port.mk>
