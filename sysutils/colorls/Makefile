# $OpenBSD: Makefile,v 1.12 2006/10/21 09:42:32 naddy Exp $

COMMENT=	"ls that can use color to display file attributes"

DISTNAME=	ls-3.9
PKGNAME=	color${DISTNAME}
CATEGORIES=	sysutils

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://sites.inka.de/~mips/unix/distfiles/

WRKDIST=	${WRKDIR}/ls
NO_REGRESS=	Yes

pre-patch:
	cp ${WRKSRC}/ls.1 ${WRKSRC}/colorls.1

.include <bsd.port.mk>
