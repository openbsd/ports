# $OpenBSD: Makefile,v 1.12 2013/02/01 15:20:36 stu Exp $

COMMENT=	publishing and presentation tool

VERSION=	1.1b9
DISTNAME=	impress-${VERSION}
REVISION=	0
DISTFILES=	imp${VERSION}.tar.gz
CATEGORIES=	misc

MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.ntlug.org/~ccox/impress/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=	x11/tk
RUN_DEPENDS=	${MODTK_RUN_DEPENDS}

NO_REGRESS=	Yes

pre-configure:
	@${MODTCL_WISH_ADJ} ${WRKSRC}/src/impress.tcl

.include <bsd.port.mk>
