# $OpenBSD: Makefile,v 1.12 2010/11/22 08:56:47 jasper Exp $

COMMENT=		convert pf(4) logs to XML

DISTNAME=		pflogx_086
PKGNAME=		pflogx-0.86
REVISION=		3
CATEGORIES=		converters

HOMEPAGE=		http://akldev.free.fr/pflogx/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB= 		c expat m pcap stdc++

MASTER_SITES=		${HOMEPAGE}/releases/ \
			http://distfiles.nl/

MAKE_FLAGS=		WITH_EXPAT=1 \
			EXPAT_INCLUDEDIR="${X11BASE}/include" \
			EXPAT_LIBDIR="${X11BASE}/lib"

NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/pflogx/

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/pflogx ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pflogx/
	${INSTALL_DATA_DIR} ${PREFIX}/share/pflogx/{dtd,xsl}/
	${INSTALL_DATA} ${WRKSRC}/{README,Changelog} ${PREFIX}/share/doc/pflogx/
	${INSTALL_DATA} ${WRKSRC}/dtd/export.dtd ${PREFIX}/share/pflogx/dtd/
	${INSTALL_DATA} ${WRKSRC}/xsl/* ${PREFIX}/share/pflogx/xsl/

.include <bsd.port.mk>
