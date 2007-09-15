# $OpenBSD: Makefile,v 1.16 2007/09/15 20:59:36 merdely Exp $

COMMENT=	pure-Tcl implementation of XML parser

DISTNAME=	TclXML-1.2.1
CATEGORIES=	textproc

MASTER_SITES=	ftp://ftp.zveno.com/TclXML/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

# custom 
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:tcl-8.4.*:lang/tcl/8.4

NO_BUILD=       Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

INSTDIR=	${PREFIX}/lib/tcl8.4/TclXML
DOCDIR=		${PREFIX}/share/doc/TclXML

do-install:
	@${INSTALL_DATA_DIR} ${INSTDIR}
	@${INSTALL_DATA} ${WRKSRC}/pkgIndex.tcl ${INSTDIR}
	@${INSTALL_DATA} ${WRKSRC}/sgml.tcl ${INSTDIR}
	@${INSTALL_DATA} ${WRKSRC}/xml.tcl ${INSTDIR}
	@${INSTALL_DATA_DIR} ${DOCDIR}
	@${INSTALL_DATA} ${WRKSRC}/docs/reference.html ${DOCDIR}

.include <bsd.port.mk>
