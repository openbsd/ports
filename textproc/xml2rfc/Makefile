# $OpenBSD: Makefile,v 1.11 2000/10/04 21:54:11 jakob Exp $
#

DISTNAME=	xml2rfc
CATEGORIES=	textproc
NEED_VERSION=	1.230
MASTER_SITES=	http://memory.palace.org/authoring/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	wish8.3::x11/tk/8.3 \
		${PREFIX}/lib/tcl8.3/TclXML::textproc/TclXML \

NO_BUILD=       Yes

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
