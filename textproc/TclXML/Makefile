# $OpenBSD: Makefile,v 1.12 2002/10/28 22:43:46 naddy Exp $

COMMENT=	"pure-Tcl implementation of XML parser"

DISTNAME=	TclXML-1.2.1
CATEGORIES=	textproc

MASTER_SITES=	ftp://ftp.zveno.com/TclXML/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:tcl-8.3.*:lang/tcl/8.3

NO_BUILD=       Yes
NO_REGRESS=	Yes

INSTDIR=	${PREFIX}/lib/tcl8.3/TclXML
DOCDIR=		${PREFIX}/share/doc/TclXML

do-install:
	@${INSTALL_DATA_DIR} ${INSTDIR}
	@${INSTALL_DATA} ${WRKSRC}/pkgIndex.tcl ${INSTDIR}
	@${INSTALL_DATA} ${WRKSRC}/sgml.tcl ${INSTDIR}
	@${INSTALL_DATA} ${WRKSRC}/xml.tcl ${INSTDIR}
	@${INSTALL_DATA_DIR} ${DOCDIR}
	@${INSTALL_DATA} ${WRKSRC}/docs/reference.html ${DOCDIR}

.include <bsd.port.mk>
