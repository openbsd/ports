# $OpenBSD: Makefile,v 1.1.1.1 2001/11/05 18:55:28 naddy Exp $

COMMENT=	"ls that can use color to display file attributes"

VERSION=	3.0
DISTNAME=	ls-${VERSION}
PKGNAME=	colorls-${VERSION}
CATEGORIES=	sysutils
NEED_VERSION=	1.475

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://sites.inka.de/mips/unix/distfiles/

WRKDIST=	${WRKDIR}/ls
NO_REGRESS=	Yes

pre-patch:
	cp ${WRKSRC}/ls.1 ${WRKSRC}/colorls.1

.include <bsd.port.mk>
