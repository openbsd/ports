# $OpenBSD: Makefile,v 1.20 2002/03/21 20:35:41 espie Exp $

COMMENT=	"block-sorting file compressor, encumbered"

DISTNAME=	bzip-0.21
CATEGORIES=	archivers
NEED_VERSION=	1.515
MASTER_SITES=	${MASTER_SITE_BACKUP}

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

MAKE_FLAGS=	CC="${CC}" \
		CFLAGS="${CFLAGS} -fomit-frame-pointer -funroll-loops \
		-Wall -Winline -Wshadow -W"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bzip ${PREFIX}/bin
	@cd ${PREFIX}/bin && ln -fs bzip bunzip
	${INSTALL_MAN} ${WRKSRC}/bzip.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/bzip.1 ${PREFIX}/man/man1/bunzip.1

.include <bsd.port.mk>
