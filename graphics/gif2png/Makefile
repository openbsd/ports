# $OpenBSD: Makefile,v 1.2 1999/09/20 20:23:51 brad Exp $

DISTNAME=	gif2png-0.6
PKGNAME=	gif2png-0.7
CATEGORIES=	graphics
MASTER_SITES=	ftp://swrinde.nde.swri.edu/pub/png/applications/
DISTFILES=	gif2png-0.6.zip gif2png-0.6-0.7.patch.gz

NEED_VERSION=	1.91

MAINTAINER=	brad@openbsd.org

LIB_DEPENDS=	png.1.3:${PORTSDIR}/graphics/png

EXTRACT_ONLY=	gif2png-0.6.zip

USE_ZIP=	yes
WRKSRC=		${WRKDIR}/gif2png

post-extract:
	@cd ${WRKSRC}; ${GZCAT} ${DISTDIR}/gif2png-0.6-0.7.patch.gz \
	| ${PATCH} --quiet -p1

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/gif2png ${PREFIX}/bin

.include <bsd.port.mk>
