# $OpenBSD: Makefile,v 1.1.1.1 1999/07/20 19:46:28 jakob Exp $
#

DISTNAME=	xml2rfc
CATEGORIES=	textproc
MASTER_SITES=	http://memory.palace.org/authoring/

MAINTAINER=	jakob@openbsd.org

RUN_DEPENDS=	wish8.0:${PORTSDIR}/x11/tk80 \
		${PREFIX}/lib/tcl8.0/TclXML:${PORTSDIR}/textproc/TclXML \

NO_BUILD=       yes
NO_CONFIGURE=	yes

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
