# $OpenBSD: Makefile,v 1.10 2001/03/22 22:06:40 brad Exp $

CATEGORIES=	print
NEED_VERSION=	1.247
MASTER_SITES=	http://www.ozemail.com.au/%7Egeoffk/pdfencrypt/
HOMEPAGE=	http://www.ozemail.com.au/%7Egeoffk/pdfencrypt/
DISTFILES=	pdf_sec.ps
DIST_SUBDIR=	gs
EXTRACT_ONLY=

LICENSE_TYPE=	CRYPTO
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No

NO_BUILD=Yes

DISTNAME=	ghostscript_encrypt
FLAVORS=aladdin gnu

.if defined(ALADDIN)
FLAVOR=aladdin
.endif

FLAVOR?=gnu

.if ${FLAVOR:L} == "aladdin"
GSDIR=${PREFIX}/share/ghostscript/6.01/lib
RUN_DEPENDS=${GSDIR}::print/ghostscript/aladdin
.else
# Gnu ghostscript, default
GSDIR=${PREFIX}/share/ghostscript/5.50
RUN_DEPENDS=${GSDIR}::print/ghostscript/gnu
.endif

pre-fake:
	${INSTALL_DATA_DIR} ${GSDIR}

do-install:
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTFILES} ${GSDIR}
	
.include <bsd.port.mk>
