# $OpenBSD: Makefile,v 1.11 2002/03/21 20:35:42 espie Exp $

COMMENT=	"MPEG/audio Layer 1 and Layer 2 encoder/decoder"
DISTNAME=	mpegaudio
PKGNAME=	mpegaudio-3.9
CATEGORIES=	audio
NEED_VERSION=   1.515
MASTER_SITES=	${MASTER_SITE_BACKUP}
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

post-install:
	${INSTALL_MAN} ${FILESDIR}/mpeg_musicin.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${FILESDIR}/mpeg_musicout.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
