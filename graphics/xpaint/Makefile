# $OpenBSD: Makefile,v 1.17 2000/05/30 09:28:42 fgsch Exp $

DISTNAME=	xpaint-2.5.7
CATEGORIES=	graphics x11
NEED_VERSION=	1.230
MASTER_SITES=	http://home.worldonline.dk/~torsten/xpaint/

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

LIB_DEPENDS=	jpeg.62::graphics/jpeg \
		tiff.35::graphics/tiff \
		png.1.6::graphics/png

FAKE=		Yes

USE_IMAKE=	Yes

WRKDIST=	${WRKDIR}/xpaint

.include <bsd.port.mk>
