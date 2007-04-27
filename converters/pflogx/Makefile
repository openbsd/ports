# $OpenBSD: Makefile,v 1.4 2007/04/27 18:43:05 bernd Exp $

COMMENT=		"parse pf logs to XML"

DISTNAME=		pflogx_086
PKGNAME=		pflogx-0.86p1
CATEGORIES=		converters

MAINTAINER=	Jasper Lievisse Adriaanse <jasper@openbsd.org>

HOMEPAGE=		http://akldev.free.fr/pflogx/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB= 		c expat m pcap stdc++

MASTER_SITES=		${HOMEPAGE}releases/ \
			http://humppa.nl/distfiles/

MAKE_FLAGS=		WITH_EXPAT=1 \
			EXPAT_INCLUDEDIR="${X11BASE}/include" \
			EXPAT_LIBDIR="${X11BASE}/lib"


NO_REGRESS=		Yes

WRKDIST=		${WRKDIR}/pflogx

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/src/pflogx ${PREFIX}/bin/
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/pflogx/
	${INSTALL_DATA_DIR} ${PREFIX}/share/pflogx/dtd/
	${INSTALL_DATA_DIR} ${PREFIX}/share/pflogx/xsl/
	${INSTALL_DATA} ${WRKSRC}/README ${PREFIX}/share/doc/pflogx/
	${INSTALL_DATA} ${WRKSRC}/Changelog ${PREFIX}/share/doc/pflogx/
	${INSTALL_DATA} ${WRKSRC}/dtd/export.dtd ${PREFIX}/share/pflogx/dtd/
	${INSTALL_DATA} ${WRKSRC}/xsl/* ${PREFIX}/share/pflogx/xsl/

.include <bsd.port.mk>
