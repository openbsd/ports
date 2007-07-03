# $OpenBSD: Makefile,v 1.4 2007/07/03 23:37:25 jakemsr Exp $

COMMENT=		"PDF backend for CUPS"

DISTNAME=		cups-pdf-2.4.2
PKGNAME=		${DISTNAME}p1
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

RUN_DEPENDS=		::print/cups \
			::print/ghostscript/gnu

NO_REGRESS=		Yes

do-build:
	${CC} ${CFLAGS} -o ${WRKDIR}/bin/cups-pdf ${WRKDIR}/${DISTNAME}/src/cups-pdf.c

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/libexec/cups/backend
	${INSTALL_DATA_DIR} ${PREFIX}/share/cups/model
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cups
	${INSTALL_PROGRAM} ${WRKDIR}/bin/cups-pdf \
		${PREFIX}/libexec/cups/backend/cups-pdf
	chmod 0700 ${PREFIX}/libexec/cups/backend/cups-pdf
	${INSTALL_DATA} ${WRKDIR}/${DISTNAME}/extra/PostscriptColor.ppd \
		${PREFIX}/share/cups/model/PostscriptColor.ppd
	${INSTALL_DATA} ${WRKDIR}/${DISTNAME}/extra/cups-pdf.conf \
		${PREFIX}/share/examples/cups/

.include <bsd.port.mk>
