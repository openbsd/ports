# $OpenBSD: Makefile,v 1.5 2001/06/29 02:43:52 kevlo Exp $

COMMENT=	"publishing and presentation tool"

VERSION=	1.1b9
DISTNAME=	imp${VERSION}
PKGNAME=	impress-${VERSION}
CATEGORIES=	misc
NEED_VERSION=	1.417
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.ntlug.org/~ccox/impress/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=    wish8.3::x11/tk/8.3

WRKDIST=        ${WRKDIR}/${PKGNAME}

.include <bsd.port.mk>
