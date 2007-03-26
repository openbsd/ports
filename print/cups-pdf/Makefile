# $OpenBSD: Makefile,v 1.3 2007/03/26 22:13:03 mbalmer Exp $

COMMENT=		"PDF backend for CUPS"

DISTNAME=		cups-pdf-2.4.2
PKGNAME=		${DISTNAME}p0
CATEGORIES=		print

HOMEPAGE=		http://cip.physik.uni-wuerzburg.de/~vrbehr/cups-pdf/
MASTER_SITES=		${HOMEPAGE}src/
DISTFILES=		${DISTNAME:S/pdf-/pdf_/}.tar.gz

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c

RUN_DEPENDS=		::print/cups

do-build:
	@cc -O2 -o ${WRKDIR}/bin/cups-pdf ${WRKDIR}/${DISTNAME}/src/cups-pdf.c

do-install:
	mkdir -p ${PREFIX}/libexec/cups/backend
	mkdir -p ${PREFIX}/share/cups/model
	mkdir -p ${PREFIX}/share/examples/cups
	cp ${WRKDIR}/bin/cups-pdf \
		${PREFIX}/libexec/cups/backend/cups-pdf
	cp ${WRKDIR}/${DISTNAME}/extra/PostscriptColor.ppd \
		${PREFIX}/share/cups/model/PostscriptColor.ppd
	cp ${WRKDIR}/${DISTNAME}/extra/cups-pdf.conf \
		${PREFIX}/share/examples/cups/

.include <bsd.port.mk>
