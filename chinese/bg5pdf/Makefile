# $OpenBSD: Makefile,v 1.8 2004/11/21 21:51:36 espie Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"convert Big5 encoded files to PDF"

DISTNAME=       bg5pdf-1.0.0
PKGNAME=	zh-${DISTNAME}
CATEGORIES=     chinese print

HOMEPAGE=	http://cschin.yydolphin.net/bg5pdf/

MAINTAINER=     Kevin Lo <kevlo@openbsd.org>

PERMIT_DISTFILES_CDROM= No
PERMIT_DISTFILES_FTP=   Yes
PERMIT_PACKAGE_CDROM=   No
PERMIT_PACKAGE_FTP=     Yes
WANTLIB=		z

MASTER_SITES=	${HOMEPAGE}

BUILD_DEPENDS=	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
RUN_DEPENDS=	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER} \
		::chinese/taipeifonts
LIB_DEPENDS=	pdf.2::print/pdflib

WRKDIST=	${WRKDIR}/bg5pdf

PYTHON_VER=	2.1
SUBST_VARS=	PYTHON_VER
MAKE_ENV=	PYTHON_VER=${PYTHON_VER}

NO_REGRESS=	Yes

.include <bsd.port.mk>
