# $OpenBSD: Makefile,v 1.8 2000/03/26 07:50:00 brad Exp $

BROKEN=		unsupported and not working properly

DISTNAME=	amp-0.7.6
CATEGORIES=	audio
MASTER_SITES=	ftp://ftp.clara.net/pub/unix/Audio/

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

FAKE=	Yes

USE_GMAKE=	Yes
GNU_CONFIGURE=	Yes

MAKE_FLAGS=	CFLAGS="${CFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/amp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/amp.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
