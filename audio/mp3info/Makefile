# $OpenBSD: Makefile,v 1.15 2003/04/27 22:48:09 margarida Exp $

COMMENT=	"MP3 information tool"

DISTNAME=	mp3info-0.8.4
CATEGORIES=	audio

HOMEPAGE=	http://www.ibiblio.org/mp3info/

MASTER_SITES=	${MASTER_SITE_SUNSITE:=apps/sound/mp3-utils/mp3info/}

MAINTAINER=	Margarida Sequeira <margarida@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

EXTRACT_SUFX=		.tgz

MAKE_FLAGS=		CC="${CC}" CFLAGS="${CFLAGS}"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/mp3info ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/mp3info.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/mp3info
	cd ${WRKSRC} && ${INSTALL_DATA} README \
	    ${PREFIX}/share/doc/mp3info

.include <bsd.port.mk>
