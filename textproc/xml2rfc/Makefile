# $OpenBSD: Makefile,v 1.36 2013/03/11 11:42:47 espie Exp $

COMMENT=	convert memos written in XML to the RFC format

DISTNAME=	xml2rfc-1.36
CATEGORIES=	textproc

EXTRACT_SUFX=	.tgz
MASTER_SITES=	http://xml.resource.org/authoring/
HOMEPAGE=	http://xml.resource.org/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MODULES+=	x11/tk
RUN_DEPENDS+=	${MODTK_RUN_DEPENDS}
NO_TEST=	Yes
PKG_ARCH=	*

do-build:
	@${SUBST_CMD} -c ${FILESDIR}/xml2rfc ${WRKSRC}/xml2rfc

do-install:
	@${INSTALL_SCRIPT} ${WRKSRC}/xml2rfc ${PREFIX}/bin/xml2rfc
	@${INSTALL_DATA_DIR} ${PREFIX}/share/xml2rfc
	@${INSTALL_DATA} ${WRKSRC}/xml2rfc.tcl ${PREFIX}/share/xml2rfc
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xml2rfc
.for file in *.html *.txt *.xml *.dtd *.xsd *.rnc
	@${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/xml2rfc
.endfor

.include <bsd.port.mk>
