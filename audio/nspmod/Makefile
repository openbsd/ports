# $OpenBSD: Makefile,v 1.26 2019/07/12 20:43:37 sthen Exp $

COMMENT=	MOD/S3M/MTM tracker that does its own DSP
DISTNAME=	nspmod-0.1
REVISION=	0
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_SUNSITE:=apps/sound/players/}

PERMIT_PACKAGE=	Yes

WANTLIB=		c sndio

MAKE_ENV=	CC=${CC}

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nspmod ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/nspmod.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
