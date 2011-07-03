# $OpenBSD: Makefile,v 1.16 2011/07/03 22:55:26 naddy Exp $

COMMENT=	very flexible diff-like program

DISTNAME=	spiff-1.0
REVISION=	1
CATEGORIES=	textproc

MASTER_SITES=	http://www.darwinsys.com/freeware/

MAINTAINER=	Ian Darwin <ian@openbsd.org>

# custom
PERMIT_PACKAGE_CDROM=	no fee
PERMIT_PACKAGE_FTP=	may not modify
PERMIT_DISTFILES_CDROM=	no fee
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m 

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/spiff ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/spiff.1 ${PREFIX}/man/man1

.include <bsd.port.mk>
