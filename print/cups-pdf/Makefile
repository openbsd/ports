# $OpenBSD: Makefile,v 1.19 2019/07/12 20:48:54 sthen Exp $

COMMENT=		PDF backend for CUPS

DISTNAME=		cups-pdf-3.0.1
CATEGORIES=		print
REVISION=		1

HOMEPAGE=		http://www.cups-pdf.de/
MASTER_SITES=		${HOMEPAGE}src/
DISTFILES=		${DISTNAME:S/pdf-/pdf_/}.tar.gz

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += c cups

LIB_DEPENDS=		print/cups,-libs
RUN_DEPENDS=		print/ghostscript/gnu

# package is only useful if cups is installed
RUN_DEPENDS +=		print/cups

NO_TEST=		Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/extra/cups-pdf.conf \
		${WRKSRC}/src/cups-pdf.h

do-build:
	cd ${WRKSRC} && \
		${CC} ${CFLAGS} -I${LOCALBASE}/include -L${LOCALBASE}/lib \
			-lcups -o cups-pdf src/cups-pdf.c

do-install:
	${INSTALL_PROGRAM_DIR} ${PREFIX}/libexec/cups/backend
	${INSTALL_DATA_DIR} ${PREFIX}/share/cups/model
	${INSTALL_DATA_DIR} ${PREFIX}/share/{doc,examples}/cups-pdf
	${INSTALL_PROGRAM} ${WRKBUILD}/cups-pdf \
		${PREFIX}/libexec/cups/backend/cups-pdf
	${INSTALL_DATA} ${WRKSRC}/extra/cups-pdf.conf \
		${PREFIX}/share/examples/cups-pdf/
	${INSTALL_DATA} ${WRKSRC}/extra/*.ppd \
		${PREFIX}/share/cups/model/
	${INSTALL_DATA} ${WRKSRC}/README \
		${PREFIX}/share/doc/cups-pdf/

.include <bsd.port.mk>
