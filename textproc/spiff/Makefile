# $OpenBSD: Makefile,v 1.9 2002/10/28 22:43:46 naddy Exp $

COMMENT=	"very flexible diff-like program"

DISTNAME=	spiff-1.0
CATEGORIES=	textproc

MASTER_SITES=	http://www.darwinsys.com/freeware/

MAINTAINER=	Ian Darwin <ian@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

NO_REGRESS=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/spiff ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/spiff.0 ${PREFIX}/man/man1

.include <bsd.port.mk>
