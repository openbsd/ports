# $OpenBSD: Makefile,v 1.32 2009/05/16 08:43:54 jakob Exp $

COMMENT=	convert memos written in XML to the RFC format

VERSION=	1.33
DISTNAME=	xml2rfc-${VERSION}
PKGNAME=	${DISTNAME}
CATEGORIES=	textproc

EXTRACT_SUFX=	.tgz
MASTER_SITES=	http://xml.resource.org/authoring/
HOMEPAGE=	http://xml.resource.org/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

# no real license, just "any lawful use is allowed"
PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	No
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	No

FLAVORS=	no_x11
FLAVOR?=

MODTCL_VERSION=	8.4
MODTK_VERSION=	8.4

.if ${FLAVOR:L} == "no_x11"
MODULES=	lang/tcl
RUN_DEPENDS=	${MODTCL_RUN_DEPENDS}
.else
MODULES+=	x11/tk
RUN_DEPENDS+=	${MODTK_RUN_DEPENDS}
.endif

# XXX could use MODTCL_BIN etc. instead
do-build:
.if ${FLAVOR:L} == "no_x11"
	sed s,y0y0y0,${PREFIX}, ${FILESDIR}/xml2rfc.no_x11 >${WRKSRC}/xml2rfc
.else
	sed s,y0y0y0,${PREFIX}, ${FILESDIR}/xml2rfc >${WRKSRC}/xml2rfc
.endif

NO_REGRESS=	Yes

do-install:
	@${INSTALL_SCRIPT} ${WRKSRC}/xml2rfc ${PREFIX}/bin/xml2rfc
	@${INSTALL_DATA_DIR} ${PREFIX}/share/xml2rfc
	@${INSTALL_DATA} ${WRKSRC}/xml2rfc.tcl ${PREFIX}/share/xml2rfc
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xml2rfc
.for file in *.html *.txt *.xml *.dtd *.xsd *.rnc
	@${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/xml2rfc
.endfor

.include <bsd.port.mk>
