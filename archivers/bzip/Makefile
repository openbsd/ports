# $OpenBSD: Makefile,v 1.26 2007/09/16 11:14:46 simon Exp $

COMMENT=	block-sorting file compressor, encumbered

DISTNAME=	bzip-0.21
CATEGORIES=	archivers
MASTER_SITES=	${MASTER_SITE_BACKUP}

# GPL + patents
PERMIT_PACKAGE_CDROM=	patents
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	patents
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	c

MAKE_FLAGS=	CC="${CC}" \
		CFLAGS="${CFLAGS} -fomit-frame-pointer -funroll-loops \
		-Wall -Winline -Wshadow -W"

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bzip ${PREFIX}/bin
	@cd ${PREFIX}/bin && ln -fs bzip bunzip
	${INSTALL_MAN} ${WRKSRC}/bzip.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/bzip.1 ${PREFIX}/man/man1/bunzip.1

.include <bsd.port.mk>
