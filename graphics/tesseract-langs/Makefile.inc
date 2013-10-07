# $OpenBSD: Makefile.inc,v 1.1.1.1 2013/10/07 06:49:49 espie Exp $

V=		3.01
DISTNAME=	tesseract-${V}
CATEGORIES=	graphics textproc

HOMEPAGE=	https://tesseract-ocr.googlecode.com/

# Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes

# language files are unversionned
MAJOR_V=	${V:C/^([0-9]+).*/\1/}
LANG_V=		${MAJOR_V}.20101024
DIST_SUBDIR=	tesseract-${LANG_V}

COMMENT=	$L language data for Tesseract
DISTFILES=	$L.traineddata.gz
PKGNAME =	tesseract-$L-${LANG_V}
REVISION =	5
RUN_DEPENDS =	graphics/tesseract>=${MAJOR_V}
PKG_ARCH=	*

SUBST_VARS +=	L
PKGDIR = 	${.CURDIR}/../pkg
DESCR =		${PKGDIR}/DESCR-$L

MASTER_SITES=	${HOMEPAGE}/files/

NO_BUILD = Yes


do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/tessdata/
	cp ${WRKDIR}/*.traineddata ${PREFIX}/share/tessdata/
	chown -R ${SHAREOWN}:${SHAREGRP} ${PREFIX}/share
