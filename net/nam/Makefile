#
# $FreeBSD: ports/net/nam/Makefile,v 1.3 1999/11/29 03:46:08 steve Exp $
# $OpenBSD: Makefile,v 1.1.1.1 2000/01/06 03:03:07 angelos Exp $
#

DISTNAME=	nam-src-1.0a7
PKGNAME=	nam-1.0a7
CATEGORIES=	net
MASTER_SITES=	http://www-mash.cs.berkeley.edu/dist/vint/

MAINTAINER=	angelos@openbsd.org

BUILD_DEPENDS=	${PREFIX}/lib/libtclcl.a:${PORTSDIR}/devel/tclcl

WRKSRC=		${WRKDIR}/${PKGNAME}

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-tcl-ver=8.2 --with-tk-ver=8.2

ALL_TARGET=

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nam ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/nam.1 ${PREFIX}/man/man1
	${MKDIR} ${PREFIX}/share/examples/nam
	${INSTALL_DATA} ${WRKSRC}/ex/* ${PREFIX}/share/examples/nam
.include <bsd.port.mk>
