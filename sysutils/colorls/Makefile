# $OpenBSD: Makefile,v 1.2 2002/01/23 01:27:31 naddy Exp $

COMMENT=	"ls that can use color to display file attributes"

PKGNAME=	colorls-3.0.1
DISTNAME=	ls-3.0
CATEGORIES=	sysutils
NEED_VERSION=	1.504

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
