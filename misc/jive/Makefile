# $OpenBSD: Makefile,v 1.26 2015/11/10 12:35:10 sthen Exp $

COMMENT=	convert English text to Jive

DISTNAME=	jive-1.1
CATEGORIES=	misc

MASTER_SITES=	http://distcache.freebsd.org/ports-distfiles/

# License: NONE
PERMIT_PACKAGE_CDROM=	no license
PERMIT_PACKAGE_FTP=	no license
PERMIT_DISTFILES_FTP=	no license

WANTLIB=		c

WRKDIST=	${WRKDIR}/jive
MAKE_FLAGS=	CC="${CC}"

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/jive ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/jive.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
