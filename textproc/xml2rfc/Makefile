# $OpenBSD: Makefile,v 1.25 2003/02/17 13:29:17 jakob Exp $

COMMENT=	"convert memos written in XML to the RFC format"

VERSION=	1.17
DISTNAME=	xml2rfc-${VERSION}
CATEGORIES=	textproc

EXTRACT_SUFX=	.tgz
MASTER_SITES=	http://xml.resource.org/authoring/
HOMEPAGE=	http://xml.resource.org/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:tcl-8.3.*:lang/tcl/8.3

FLAVORS=	no_x11
FLAVOR?=

.if ${FLAVOR:L} == "no_x11"
USE_X11=	No
.else
USE_X11=	Yes
RUN_DEPENDS+=	:tk-8.3.*:x11/tk/8.3
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
.for file in *.html *.txt *.xml *.dtd *.xslt
	@${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/xml2rfc
.endfor

.include <bsd.port.mk>
