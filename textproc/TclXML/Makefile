# $OpenBSD: Makefile,v 1.2 2000/03/05 18:30:44 espie Exp $

DISTNAME=	TclXML-1.1.1
CATEGORIES=	textproc
NEED_VERSION=	1.223
MASTER_SITES=	ftp://ftp.zveno.com/TclXML/

MAINTAINER=	jakob@openbsd.org

RUN_DEPENDS=	tclsh8.0:lang/tcl80

NO_BUILD=       Yes
NO_CONFIGURE=	Yes

INSTDIR=	${PREFIX}/lib/tcl8.0/TclXML
DOCDIR=		${PREFIX}/share/doc/TclXML

do-install:
	@${INSTALL_DATA_DIR} ${INSTDIR}
	@${INSTALL_DATA} ${WRKSRC}/pkgIndex.tcl ${INSTDIR}
	@${INSTALL_DATA} ${WRKSRC}/sgml.tcl ${INSTDIR}
	@${INSTALL_DATA} ${WRKSRC}/xml.tcl ${INSTDIR}
	@${INSTALL_DATA_DIR} ${DOCDIR}
	@${INSTALL_DATA} ${WRKSRC}/docs/reference.html ${DOCDIR}

.include <bsd.port.mk>
