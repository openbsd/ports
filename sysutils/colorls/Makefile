# $OpenBSD: Makefile,v 1.3 2002/12/29 20:19:10 fgsch Exp $

COMMENT=	"ls that can use color to display file attributes"

PKGNAME=	colorls-3.0.1
DISTNAME=	ls-3.0
CATEGORIES=	sysutils

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
