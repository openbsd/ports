# $OpenBSD: Makefile,v 1.11 2001/09/09 17:56:59 naddy Exp $

COMMENT=	"validating namespace-aware XML parser"

DISTNAME=	rxp-1.2.3
CATEGORIES=	textproc
NEED_VERSION=	1.402

MAINTAINER=     Jakob Schlyter <jakob@openbsd.org>

HOMEPAGE=	http://www.cogsci.ed.ac.uk/~richard/rxp.html

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.cogsci.ed.ac.uk/pub/richard/

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/rxp ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/rxp.1 ${PREFIX}/man/man1/rxp.1

.include <bsd.port.mk>
