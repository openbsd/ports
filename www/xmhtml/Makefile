# $OpenBSD: Makefile,v 1.22 2013/03/21 08:48:55 ajacoutot Exp $

COMMENT=	Motif widget capable of displaying HTML 3.2 conforming text

DISTNAME=	XmHTML-1.1.7
PKGNAME=	${DISTNAME:L}
REVISION=	6
CATEGORIES=     www x11
SHARED_LIBS=	XmHTML	1.2

# LGPL
PERMIT_PACKAGE_CDROM=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	graphics/jpeg \
		graphics/png \
		x11/openmotif

NO_TEST=	Yes

USE_GMAKE=	Yes

EXMP_DIR=   ${PREFIX}/share/examples/XmHTML
DOCS_DIR=   ${PREFIX}/share/doc/XmHTML

do-install:
	${LIBTOOL} --mode=install ${INSTALL_DATA} \
		${WRKSRC}/lib/libXmHTML.la ${PREFIX}/lib
	${INSTALL_DATA_DIR} ${PREFIX}/include/XmHTML
	${INSTALL_DATA} ${WRKSRC}/include/XmHTML/*.h ${PREFIX}/include/XmHTML
	${INSTALL_DATA_DIR} ${EXMP_DIR}
	${TAR} -C ${WRKSRC} -cpf- book contrib examples | \
		${TAR} -C ${EXMP_DIR} -xpf-
	${INSTALL_DATA_DIR} ${DOCS_DIR}
	${TAR} -C ${WRKSRC}/html -cpf- . | ${TAR} -C ${DOCS_DIR} -xpf-
	chown -R ${SHAREOWN}:${SHAREGRP} ${EXMP_DIR}/* ${DOCS_DIR}/*
	chown -h ${SHAREOWN}:${SHAREGRP} ${EXMP_DIR}/examples/gif_decode.c

.include <bsd.port.mk>
