# $OpenBSD: Makefile,v 1.7 2000/04/03 01:54:06 espie Exp $

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

FAKE=	Yes

pre-fake:
	mkdir -p ${GSDIR}

do-install:
	# needed to keep dumb pkg_create quiet
	touch ${GSDIR}/.gs-encrypt
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTFILES} ${GSDIR}
	
.include <bsd.port.mk>
