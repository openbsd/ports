# $OpenBSD: Makefile,v 1.11 2002/03/21 21:25:53 espie Exp $
#

COMMENT=	"powerful command-line front end to diff"

PKGNAME=	idiff-1.0
DISTNAME=	idiff-1.0
CATEGORIES=	textproc
MASTER_SITES=	http://www.darwinsys.com/freeware/
NEED_VERSION=	1.515

MAINTAINER=	Ian Darwin <ian@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/idiff ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/idiff.cat1 ${PREFIX}/man/cat1/idiff.0

.include <bsd.port.mk>
