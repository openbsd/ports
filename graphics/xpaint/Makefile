# $OpenBSD: Makefile,v 1.15 2000/04/09 17:36:43 espie Exp $

DISTNAME=	xpaint-2.5.5
CATEGORIES=	graphics x11
NEED_VERSION=	 1.230
FAKE=No
MASTER_SITES=	http://www.danbbs.dk/~torsten/xpaint/

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		tiff.35::graphics/tiff \
		png.1.3::graphics/png

USE_IMAKE=	Yes

WRKDIST=	${WRKDIR}/xpaint

.include <bsd.port.mk>
