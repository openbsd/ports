# $OpenBSD: Makefile,v 1.38 2014/08/10 09:58:06 espie Exp $

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
NO_BUILD=	Yes
NO_TEST=	Yes
PKG_ARCH=	*

do-install:
	@${SUBST_PROGRAM} ${FILESDIR}/xml2rfc ${PREFIX}/bin/xml2rfc
	@${INSTALL_DATA_DIR} ${PREFIX}/share/xml2rfc
	@${INSTALL_DATA} ${WRKSRC}/xml2rfc.tcl ${PREFIX}/share/xml2rfc
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xml2rfc
.for file in *.html *.txt *.xml *.dtd *.xsd *.rnc
	@${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/xml2rfc
.endfor

.include <bsd.port.mk>
