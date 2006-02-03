# $OpenBSD: Makefile,v 1.19 2006/02/03 20:09:58 steven Exp $

COMMENT=	"MOD/S3M/MTM tracker that does its own DSP"
DISTNAME=	nspmod-0.1
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_SUNSITE:=apps/sound/players/}

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c ossaudio

MAKE_ENV=	CC=${CC}

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nspmod ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/nspmod.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
