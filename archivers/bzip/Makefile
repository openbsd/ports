# $OpenBSD: Makefile,v 1.13 2000/03/24 22:11:32 espie Exp $

DISTNAME=	bzip-0.21
CATEGORIES=	archivers
NEED_VERSION=	1.218
MASTER_SITES=	${MASTER_SITE_BACKUP}


MAINTAINER=	ports@openbsd.org

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

FAKE=	Yes

MAKE_FLAGS=	CC="${CC}" \
		CFLAGS="${CFLAGS} -fomit-frame-pointer -funroll-loops \
		-Wall -Winline -Wshadow -W"

pre-install:
	@cat ${FILESDIR}/COPYRIGHT

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/bzip ${PREFIX}/bin
	@cd ${PREFIX}/bin; ln -fs bzip bunzip
	${INSTALL_MAN} ${WRKSRC}/bzip.1 ${PREFIX}/man/man1
	${INSTALL_MAN} ${WRKSRC}/bzip.1 ${PREFIX}/man/man1/bunzip.1

.include <bsd.port.mk>
