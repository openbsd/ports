# $OpenBSD: Makefile,v 1.11 2000/02/12 06:29:56 turan Exp $

DISTNAME=	xpaint-2.5.5
CATEGORIES=	graphics x11
MASTER_SITES=	http://www.danbbs.dk/~torsten/xpaint/
NEED_VERSION=	1.191

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PKG_CDROM=	YES
PERMIT_PKG_FTP=		YES
PERMIT_DISTF_CDROM=	YES
PERMIT_DISTF_FTP=	YES

LIB_DEPENDS=	jpeg.62:${PORTSDIR}/graphics/jpeg \
		tiff.35:${PORTSDIR}/graphics/tiff \
		png.1.3:${PORTSDIR}/graphics/png

USE_IMAKE=	yes

WRKDIST=	${WRKDIR}/xpaint

.include <bsd.port.mk>
