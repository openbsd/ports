# $OpenBSD: Makefile,v 1.13 2001/04/14 14:48:50 espie Exp $

COMMENT=	"encrypted pdf add-on for ghostscript"
CATEGORIES=	print
NEED_VERSION=	1.363
MASTER_SITES=	http://www.ozemail.com.au/~geoffk/pdfencrypt/
HOMEPAGE=	http://www.ozemail.com.au/~geoffk/pdfencrypt/
DISTFILES=	pdf_sec.ps
DIST_SUBDIR=	gs
EXTRACT_ONLY=

# Crypto
PERMIT_PACKAGE_FTP=	Yes
PERMIT_PACKAGE_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No

NO_BUILD=Yes

DISTNAME=	ghostscript-encrypt-0
FLAVORS=afpl aladdin gnu

FLAVOR?=gnu

GSDIR=print/ghostscript/${FLAVOR:L}

.if !defined(HACK)
PORTSDIR!=cd ${.CURDIR} && HACK=yes ${MAKE} show VARNAME=PORTSDIR
PDFDIR!=cd ${PORTSDIR} && cd ${GSDIR} && \
	{ unset FLAVOR; ${MAKE} show VARNAME=PDFDIR ; }
.endif

RUN_DEPENDS=${LOCALBASE}/${PDFDIR}::${GSDIR}

SUBST_VARS=	PDFDIR

pre-fake:
	${INSTALL_DATA_DIR} ${PREFIX}/${PDFDIR}

do-install:
	${INSTALL_DATA} ${FULLDISTDIR}/${DISTFILES} ${PREFIX}/${PDFDIR}
	
.include <bsd.port.mk>
