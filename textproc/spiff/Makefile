# $OpenBSD: Makefile,v 1.6 2000/10/05 16:10:26 ian Exp $
#

DISTNAME=	spiff-1.0
CATEGORIES=	textproc
NEED_VERSION=	1.310
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
