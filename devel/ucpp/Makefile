# $OpenBSD: Makefile,v 1.1.1.1 2002/07/24 12:16:24 espie Exp $

DISTNAME=	ucpp-1.2
COMMENT=	C preprocessor and lexer
CATEGORIES=	devel
HOMEPAGE=	http://www.di.ens.fr/~pornin/ucpp/
MASTER_SITES=	${HOMEPAGE}
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes

MAINTAINER=	Marc Espie <espie@openbsd.org>
MAKE_FLAGS=	FLAGS='${CFLAGS} -D_POSIX_SOURCE' CC='${CC}'
NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/ucpp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ucpp.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
