# $OpenBSD: Makefile,v 1.5 2000/03/27 18:17:30 espie Exp $

DISTNAME=	TclXML-1.1.1
CATEGORIES=	textproc
NEED_VERSION=	1.230
MASTER_SITES=	ftp://ftp.zveno.com/TclXML/

MAINTAINER=	jakob@openbsd.org

PERMIT_PACKAGE_CDROM=	no
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	no
PERMIT_DISTFILES_FTP=	yes

RUN_DEPENDS=	tclsh8.0::lang/tcl/8.0

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
