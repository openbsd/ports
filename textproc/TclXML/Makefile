# $OpenBSD: Makefile,v 1.6 2000/03/28 13:58:41 kevlo Exp $

DISTNAME=	TclXML-1.2.1
CATEGORIES=	textproc
NEED_VERSION=	1.230
MASTER_SITES=	ftp://ftp.zveno.com/TclXML/

MAINTAINER=	jakob@openbsd.org

PERMIT_PACKAGE_CDROM=	no
PERMIT_PACKAGE_FTP=	yes
PERMIT_DISTFILES_CDROM=	no
PERMIT_DISTFILES_FTP=	yes

RUN_DEPENDS=	tclsh8.3::lang/tcl/8.3

FAKE=		Yes
NO_BUILD=       Yes
NO_CONFIGURE=	Yes

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
