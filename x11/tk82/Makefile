#
# $FreeBSD: ports/x11-toolkits/tk82/Makefile,v 1.32 2000/01/05 07:12:09 jseger Exp $
# $OpenBSD: Makefile,v 1.1.1.1 2000/01/06 00:53:03 angelos Exp $
#

DISTNAME=	tk8.2.3
PKGNAME=	tk-8.2.3
CATEGORIES=	x11-toolkits tk82
MASTER_SITES=	ftp://ftp.scriptics.com/pub/tcl/tcl8_2/

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=	tcl82.1:${PORTSDIR}/lang/tcl82

USE_XLIB=	yes
WRKSRC=		${WRKDIR}/${DISTNAME}/unix
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--enable-shared --with-tcl=${PREFIX}/lib/tcl8.2
CONFIGURE_ENV=  PORTSDIR=${PORTSDIR} TK_LIB_FILE=libtk82.so.1
PKGINSTALL=     ${PKGDIR}/INSTALL.wish

post-install:
	${SETENV} OBJFORMAT=${PORTOBJFORMAT} ${LDCONFIG} -m ${PREFIX}/lib
.if exists(${PKGINSTALL})
	${SETENV} PKG_PREFIX=${PREFIX} ${SH} ${PKGINSTALL}
.endif

test:
	cd ${WRKSRC}; make test

.include <bsd.port.mk>
