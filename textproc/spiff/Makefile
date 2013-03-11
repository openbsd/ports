# $OpenBSD: Makefile,v 1.17 2013/03/11 11:42:47 espie Exp $

COMMENT=	very flexible diff-like program

DISTNAME=	spiff-1.0
REVISION=	1
CATEGORIES=	textproc

MASTER_SITES=	http://www.darwinsys.com/freeware/

MAINTAINER=	Ian Darwin <ian@openbsd.org>

# custom
PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	may not modify
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m 

NO_TEST=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/spiff ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/spiff.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
