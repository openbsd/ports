# $OpenBSD: Makefile,v 1.2 2006/08/01 22:19:46 espie Exp $

COMMENT=		"parse pf logs to XML"

DISTNAME=		pflogx_086
PKGNAME=		pflogx-0.86
CATEGORIES=		converters

MAINTAINER=		Jasper Lievisse Adriaanse <jasper@nedbsd.nl>

HOMEPAGE=		http://akldev.free.fr/pflogx/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB= 		c m pcap stdc++

MASTER_SITES=		${HOMEPAGE}releases/ \
			http://humppa.nl/distfiles/

LIB_DEPENDS=		expat.>=6::textproc/expat

MAKE_FLAGS=		WITH_EXPAT=1

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
