#
# $FreeBSD: ports/lang/tcl82/Makefile,v 1.26 2000/01/05 07:11:48 jseger Exp $
# $OpenBSD: Makefile,v 1.1.1.1 2000/01/06 00:36:20 angelos Exp $
#

DISTNAME=	tcl8.2.3
PKGNAME=	tcl-8.2.3
CATEGORIES=	lang tcl82
MASTER_SITES=	ftp://ftp.scriptics.com/pub/tcl/tcl8_2/

MAINTAINER=	angelos@openbsd.org

WRKSRC=		${WRKDIR}/${DISTNAME}/unix
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--enable-shared
CONFIGURE_ENV=  PORTSDIR=${PORTSDIR}
MAKE_ENV=	SHORT_TCL_VER=82
PKGINSTALL=     ${PKGDIR}/INSTALL.tclsh

PLIST_SUB=	TCL_VER=8.2 SHORT_TCL_VER=82

post-extract:
	${MV} ${WRKDIR}/${DISTNAME}/doc/InitStubs.3 \
	      ${WRKDIR}/${DISTNAME}/doc/Tcl_InitStubs.3
post-install:
	${SETENV} OBJFORMAT=${PORTOBJFORMAT} ${LDCONFIG} -m ${PREFIX}/lib
.if exists(${PKGINSTALL})
	${SETENV} PKG_PREFIX=${PREFIX} ${SH} ${PKGINSTALL}
.endif

test:
	cd ${WRKSRC} && ${MAKE} test

.include <bsd.port.mk>
