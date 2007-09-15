# $OpenBSD: Makefile,v 1.30 2007/09/15 20:59:42 merdely Exp $

COMMENT=	convert memos written in XML to the RFC format

VERSION=	1.26
DISTNAME=	xml2rfc-${VERSION}
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

RUN_DEPENDS=	:tcl-8.4.*:lang/tcl/8.4

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:L} == "no_x11"
USE_X11=	No
.else
USE_X11=	Yes
RUN_DEPENDS+=	:tk-8.4.*:x11/tk/8.4
.endif

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
