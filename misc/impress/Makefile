# $OpenBSD: Makefile,v 1.7 2002/10/27 21:07:53 naddy Exp $

COMMENT=	"publishing and presentation tool"

VERSION=	1.1b9
DISTNAME=	imp${VERSION}
PKGNAME=	impress-${VERSION}
CATEGORIES=	misc

MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.ntlug.org/~ccox/impress/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=    ::x11/tk/8.3

WRKDIST=        ${WRKDIR}/${PKGNAME}

NO_REGRESS=	Yes

.include <bsd.port.mk>
