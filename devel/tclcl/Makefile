#
# $FreeBSD: ports/devel/tclcl/Makefile,v 1.4 1999/11/28 18:31:57 steve Exp $
# $OpenBSD: Makefile,v 1.1.1.1 2000/01/06 02:36:15 angelos Exp $
#

DISTNAME=	tclcl-src-1.0b8
PKGNAME=	tclcl-1.0b8
CATEGORIES=	devel
MASTER_SITES=	http://www-mash.cs.berkeley.edu/dist/

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=    tk82.1:${PORTSDIR}/x11/tk82 \
		otcl.1:${PORTSDIR}/lang/otcl

WRKSRC=		${WRKDIR}/${PKGNAME}

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-tcl-ver=8.2 --with-tk-ver=8.2

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcl2c++ ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/otcldoc ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/*.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/libtclcl.a ${PREFIX}/lib
	@${LN} -sf ${PREFIX}/lib/libtclcl.a ${PREFIX}/lib/libTcl.a
.include <bsd.port.mk>
