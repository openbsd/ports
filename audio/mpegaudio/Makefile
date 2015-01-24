# $OpenBSD: Makefile,v 1.20 2015/01/24 11:07:57 schwarze Exp $

COMMENT=	MPEG/audio Layer 1 and Layer 2 encoder/decoder
DISTNAME=	mpegaudio
PKGNAME=	mpegaudio-3.9
CATEGORIES=	audio
EXTRACT_SUFX=	.tar.Z

PERMIT_PACKAGE_CDROM=	Yes
WANTLIB=		c m

MAKE_ENV=	CC="${CC}"
NO_TEST=	Yes

post-install:
	${INSTALL_MAN} ${FILESDIR}/mpeg_musicin.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${FILESDIR}/mpeg_musicout.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
