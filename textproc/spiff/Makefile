# $OpenBSD: Makefile,v 1.8 2002/03/21 21:25:53 espie Exp $
#

COMMENT=	"very flexible diff-like program"

DISTNAME=	spiff-1.0
CATEGORIES=	textproc
NEED_VERSION=	1.515
MASTER_SITES=	http://www.darwinsys.com/freeware/

MAINTAINER=	Ian Darwin <ian@openbsd.org>

PERMIT_PACKAGE_CDROM=	"no fee"
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_DISTFILES_FTP=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/spiff ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/spiff.0 ${PREFIX}/man/man1

.include <bsd.port.mk>
