# $OpenBSD: Makefile,v 1.22 2019/07/12 20:43:51 sthen Exp $

COMMENT=		convert pf(4) logs to XML

DISTNAME=		pflogx_086
PKGNAME=		pflogx-0.86
REVISION =		7
CATEGORIES=		converters

HOMEPAGE=		http://akldev.free.fr/pflogx/

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB= 		c expat m pcap ${COMPILER_LIBCXX}

COMPILER =		base-clang ports-gcc base-gcc

MASTER_SITES=		${HOMEPAGE}/releases/ \
			https://distfiles.nl/

MAKE_FLAGS=		WITH_EXPAT=1 \
			EXPAT_INCLUDEDIR="${X11BASE}/include" \
			EXPAT_LIBDIR="${X11BASE}/lib"

NO_TEST=		Yes

WRKDIST=		${WRKDIR}/pflogx

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/pflogx ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pflogx/
	${INSTALL_DATA_DIR} ${PREFIX}/share/pflogx/{dtd,xsl}/
	${INSTALL_DATA} ${WRKSRC}/{README,Changelog} ${PREFIX}/share/doc/pflogx/
	${INSTALL_DATA} ${WRKSRC}/dtd/export.dtd ${PREFIX}/share/pflogx/dtd/
	${INSTALL_DATA} ${WRKSRC}/xsl/* ${PREFIX}/share/pflogx/xsl/

.include <bsd.port.mk>
