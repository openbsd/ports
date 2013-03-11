# $OpenBSD: Makefile,v 1.15 2013/03/11 11:37:53 espie Exp $

COMMENT=		PDF backend for CUPS

DISTNAME=		cups-pdf-2.6.1
CATEGORIES=		print
REVISION=		0

HOMEPAGE=		http://www.cups-pdf.de/
MASTER_SITES=		${HOMEPAGE}src/
DISTFILES=		${DISTNAME:S/pdf-/pdf_/}.tar.gz

# GPLv2+
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c

RUN_DEPENDS=		print/ghostscript/gnu \
			mail/p5-MIME-Lite \
			mail/p5-MIME-tools

# package is only useful if cups is installed
RUN_DEPENDS +=	print/cups

NO_TEST=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/extra/cups-pdf.conf \
		${WRKSRC}/src/cups-pdf.h

do-build:
	cd ${WRKDIR} && \
	${CC} ${CFLAGS} -o bin/cups-pdf ${WRKDIR}/${DISTNAME}/src/cups-pdf.c

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/libexec/cups/backend
	${INSTALL_DATA_DIR} ${PREFIX}/share/cups/model
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/cups
	${INSTALL_PROGRAM} ${WRKDIR}/bin/cups-pdf \
		${PREFIX}/libexec/cups/backend/cups-pdf
	${INSTALL_SCRIPT} ${WRKBUILD}/contrib/cups-pdf-dispatch-0.1/cups-pdf-dispatch \
		${PREFIX}/bin
	${INSTALL_DATA} ${WRKDIR}/${DISTNAME}/extra/CUPS-PDF.ppd \
		${PREFIX}/share/cups/model/
	${INSTALL_DATA} ${WRKDIR}/${DISTNAME}/extra/cups-pdf.conf \
		${PREFIX}/share/examples/cups/
	${INSTALL_DATA} ${WRKBUILD}/contrib/cups-pdf-dispatch-0.1/cups-pdf-dispatch.conf \
		${PREFIX}/share/examples/cups/
	${INSTALL_DATA} ${WRKBUILD}/contrib/cups-pdf-dispatch-0.1/examples/cups-pdf-dispatch-ldap.conf \
		${PREFIX}/share/examples/cups/

.include <bsd.port.mk>
