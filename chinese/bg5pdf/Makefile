# $OpenBSD: Makefile,v 1.12 2006/07/19 13:41:02 steven Exp $

SHARED_ONLY=	Yes

COMMENT=	"convert Big5 encoded files to PDF"

DISTNAME=	bg5pdf-1.0.0
PKGNAME=	zh-${DISTNAME}p2
CATEGORIES=	chinese print

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# GPL + Aladdin license
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		z

BUILD_DEPENDS=	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER}
RUN_DEPENDS=	:python-${PYTHON_VER}*:lang/python/${PYTHON_VER} \
		::chinese/taipeifonts
LIB_DEPENDS=	pdf.2::print/pdflib

WRKDIST=	${WRKDIR}/bg5pdf

PYTHON_VER=	2.4
SUBST_VARS=	PYTHON_VER
MAKE_ENV=	PYTHON_VER=${PYTHON_VER}

NO_REGRESS=	Yes

pre-configure:
	perl -pi -e \
		"s|/usr/bin/python|${LOCALBASE}/bin/python${PYTHON_VER}|" \
		${WRKSRC}/bg5pdf

.include <bsd.port.mk>
