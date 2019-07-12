# $OpenBSD: Makefile,v 1.3 2019/07/12 20:43:36 sthen Exp $

COMMENT=	apply gain information to mp3 audio data

VERSION=	1.1.0
DISTNAME=	mp3applygain-${VERSION}
CATEGORIES=	audio
REVISION =	0

HOMEPAGE=	https://github.com/jeremyevans/mp3applygain

MAINTAINER=	Jeremy Evans <jeremy@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE=	Yes

WANTLIB= c m

MASTER_SITES=	https://github.com/jeremyevans/mp3applygain/releases/download/${VERSION}/

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mp3applygain ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/mp3applygain.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
