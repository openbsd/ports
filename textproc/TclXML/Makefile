# $OpenBSD: Makefile,v 1.8 2000/10/22 16:10:59 espie Exp $

DISTNAME=	TclXML-1.2.1
CATEGORIES=	textproc
NEED_VERSION=	1.230
MASTER_SITES=	ftp://ftp.zveno.com/TclXML/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	No
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	No
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	tclsh8.3::lang/tcl/8.3

NO_BUILD=       Yes

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
