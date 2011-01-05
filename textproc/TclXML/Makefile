# $OpenBSD: Makefile,v 1.19 2011/01/05 19:28:35 landry Exp $

COMMENT=	pure-Tcl implementation of XML parser

DISTNAME=	TclXML-1.2.1
REVISION =	1
CATEGORIES=	textproc

MASTER_SITES=	ftp://ftp.zveno.com/TclXML/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

# custom
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/tcl
MODTCL_VERSION=	8.4
RUN_DEPENDS=	${MODTCL_RUN_DEPENDS}

NO_BUILD=	Yes
NO_REGRESS=	Yes
PKG_ARCH=	*

INSTDIR=	${WRKINST}/${MODTCL_TCLDIR}/TclXML
DOCDIR=		${PREFIX}/share/doc/TclXML

do-install:
	@${INSTALL_DATA_DIR} ${INSTDIR}
	@${INSTALL_DATA} ${WRKSRC}/pkgIndex.tcl ${INSTDIR}
	@${INSTALL_DATA} ${WRKSRC}/sgml.tcl ${INSTDIR}
	@${INSTALL_DATA} ${WRKSRC}/xml.tcl ${INSTDIR}
	@${INSTALL_DATA_DIR} ${DOCDIR}
	@${INSTALL_DATA} ${WRKSRC}/docs/reference.html ${DOCDIR}

.include <bsd.port.mk>
