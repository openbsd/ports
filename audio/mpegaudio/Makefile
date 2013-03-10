# $OpenBSD: Makefile,v 1.18 2013/03/10 22:55:04 espie Exp $

COMMENT=	MPEG/audio Layer 1 and Layer 2 encoder/decoder
DISTNAME=	mpegaudio
PKGNAME=	mpegaudio-3.9
CATEGORIES=	audio
MASTER_SITES=	${MASTER_SITE_BACKUP}
EXTRACT_SUFX=	.tar.Z

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m

MAKE_ENV=	CC="${CC}"
USE_GROFF =	Yes
NO_TEST=	Yes

post-install:
	${INSTALL_MAN} ${FILESDIR}/mpeg_musicin.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${FILESDIR}/mpeg_musicout.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
