# $OpenBSD: Makefile,v 1.1.1.1 1999/07/20 19:46:06 jakob Exp $

DISTNAME=	TclXML-1.1.1
CATEGORIES=	textproc
MASTER_SITES=	ftp://ftp.zveno.com/TclXML/

MAINTAINER=	jakob@openbsd.org

RUN_DEPENDS=	tclsh8.0:${PORTSDIR}/lang/tcl80

NO_BUILD=       yes
NO_CONFIGURE=	yes

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
