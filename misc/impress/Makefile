# $OpenBSD: Makefile,v 1.4 2001/04/18 03:13:37 kevlo Exp $

COMMENT=	"publishing and presentation tool"
DISTNAME=	imp1.1b8
PKGNAME=	impress-1.1b8
CATEGORIES=	misc
NEED_VERSION=	1.399
MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.ntlug.org/~ccox/impress/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

RUN_DEPENDS=    wish8.3::x11/tk/8.3

WRKDIST=        ${WRKDIR}/impress-1.1-b8

.include <bsd.port.mk>
