# $OpenBSD: Makefile,v 1.15 2000/07/04 02:09:19 krw Exp $

DISTNAME=	fnlib-0.5
CATEGORIES=	graphics
NEED_VERSION=	1.310
MASTER_SITES=	ftp://beaver.its.vu.edu.au/pub/enlightenment/enlightenment/libs/ \
		http://mirror.nucba.ac.jp/mirror/enlightenment/enlightenment/libs/ \
		ftp://ftp.dti.ad.jp/pub/X/enlightenment/fnlib/ \
		ftp://ftp.squish.org/pub/enlightenment/fnlib/

LIB_DEPENDS=	Imlib.19::graphics/imlib

MAINTAINER=	op21@squish.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_GMAKE=	Yes
SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static
CONFIGURE_ENV=	CPPFLAGS="-I${X11BASE}/include -I${LOCALBASE}/include" \
		LDFLAGS="-L${X11BASE}/lib -L${LOCALBASE}/lib"

.include <bsd.port.mk>
