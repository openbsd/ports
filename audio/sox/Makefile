# $OpenBSD: Makefile,v 1.12 2000/03/09 07:48:40 todd Exp $

DISTNAME=	sox-12.15
CATEGORIES=	audio
MASTER_SITES=	http://home.sprynet.com/~cbagwell/
NEED_VERSION=	1.210

MAINTAINER=	angelos@openbsd.org

FAKE=			Yes
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAKE_FILE=	Makefile.unx
MAKE_ENV=	MISC_DEFINES='-Dunix ${CFLAGS}'

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/sox ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/sox.1 ${PREFIX}/man/man1/sox.1

.include <bsd.port.mk>
