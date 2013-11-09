# $OpenBSD: Makefile,v 1.14 2013/11/09 18:22:02 zhuk Exp $

COMMENT=	publishing and presentation tool

VERSION=	1.1b9
DISTNAME=	impress-${VERSION}
REVISION=	1
DISTFILES=	imp${VERSION}.tar.gz
CATEGORIES=	misc

MASTER_SITES=	${HOMEPAGE}

HOMEPAGE=	http://www.ntlug.org/~ccox/impress/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes

MODULES=	x11/tk
RUN_DEPENDS=	${MODTK_RUN_DEPENDS}

NO_TEST=	Yes

pre-configure:
	@${MODTCL_WISH_ADJ} ${WRKSRC}/src/impress.tcl

.include <bsd.port.mk>
