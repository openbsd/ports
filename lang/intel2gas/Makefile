# $OpenBSD: Makefile,v 1.14 2019/10/02 18:37:33 jasper Exp $

COMMENT=	convert Intel assembly language (nasm) to AT&T syntax (gas)

VERSION=	1.3.3
DISTNAME=	intel2gas-${VERSION}
REVISION =	3
CATEGORIES=	lang

MASTER_SITES=	https://distfiles.nl/

# GPL
PERMIT_PACKAGE=	Yes
WANTLIB=		c ${COMPILER_LIBCXX} m

COMPILER =		base-clang ports-gcc base-gcc

NO_TEST=	Yes
CONFIGURE_STYLE=gnu
MAKE_FLAGS=	CXX="${CXX}"

DATAPREFIX=	${PREFIX}/share/intel2gas
DATADIRS=	i2g g2i m2g
DOCS=		BUGS DATAFILES README

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/intel2gas ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${DATAPREFIX}
.for dir in ${DATADIRS}
	${INSTALL_DATA_DIR} ${DATAPREFIX}/${dir}
	@cd ${WRKSRC}; ${INSTALL_DATA} ${dir}/* ${DATAPREFIX}/${dir}
.endfor
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/intel2gas
	@cd ${WRKSRC}; ${INSTALL_DATA} ${DOCS} ${PREFIX}/share/doc/intel2gas

.include <bsd.port.mk>
