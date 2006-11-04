# $OpenBSD: Makefile,v 1.9 2006/11/04 19:19:15 kili Exp $

COMMENT=	"publishing and presentation tool"

VERSION=	1.1b9
DISTNAME=	impress-${VERSION}
DISTFILES=	imp${VERSION}.tar.gz
CATEGORIES=	misc

MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.ntlug.org/~ccox/impress/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=    ::x11/tk/8.4

NO_REGRESS=	Yes

.include <bsd.port.mk>
