# $OpenBSD: Makefile,v 1.14 2001/03/30 14:49:37 jakob Exp $

COMMENT=	convert memos written in XML to the RFC format

VERSION=	1.2
DISTNAME=	xml2rfc.${VERSION}
PKGNAME=	xml2rfc-${VERSION}
CATEGORIES=	textproc
NEED_VERSION=	1.363

MASTER_SITES=	http://xml.resource.org/authoring/

HOMEPAGE=	http://xml.resource.org/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	wish8.3::x11/tk/8.3 \
		${PREFIX}/lib/tcl8.3/TclXML::textproc/TclXML \

NO_BUILD=       Yes
WRKDIST=	${WRKDIR}

DOCS=		README.xml README.txt \
		rfc2629-author.xml rfc2629-author.txt \
		rfc2629.dtd

do-install:
	@${INSTALL_SCRIPT} ${WRKSRC}/xml2rfc.tcl ${PREFIX}/bin/xml2rfc
	@${INSTALL_DATA_DIR} ${PREFIX}/share/doc/xml2rfc
.for file in ${DOCS}
	@${INSTALL_DATA} ${WRKSRC}/${file} ${PREFIX}/share/doc/xml2rfc
.endfor

.include <bsd.port.mk>
