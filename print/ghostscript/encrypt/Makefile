# $OpenBSD: Makefile,v 1.2 2000/02/20 00:59:49 espie Exp $

CATEGORIES=	print
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

.if defined(ALADDIN)
# Todo
DISTNAME=	aladdin-ghostscript-encrypt
GSDIR=${PREFIX}/share/ghostscript/6.0
RUN_DEPENDS=${GSDIR}:${PORTSDIR}/print/ghostscript/aladdin
.else
# Gnu ghostscript, default
DISTNAME=	ghostscript-encrypt
GSDIR=${PREFIX}/share/ghostscript/5.50
RUN_DEPENDS=${GSDIR}:${PORTSDIR}/print/ghostscript/gnu
.endif

do-install:
	# needed, since pkg_create is fucked up
	touch ${GSDIR}/.gs-encrypt
	mv ${GSDIR}/pdf_sec.ps ${GSDIR}/pdf_sec.stub
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTFILES} ${GSDIR}
	
.include <bsd.port.mk>
