# $OpenBSD: Makefile,v 1.11 2001/04/02 14:51:10 espie Exp $

COMMENT=	"encrypted pdf add-on for ghostscript"
CATEGORIES=	print
NEED_VERSION=	1.363
MASTER_SITES=	http://www.ozemail.com.au/%7Egeoffk/pdfencrypt/
HOMEPAGE=	http://www.ozemail.com.au/%7Egeoffk/pdfencrypt/
DISTFILES=	pdf_sec.ps
DIST_SUBDIR=	gs
EXTRACT_ONLY=

# Crypto
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No

NO_BUILD=Yes

DISTNAME=	ghostscript_encrypt-1.0
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
