#
# $FreeBSD: ports/net/ns/Makefile,v 1.3 1999/11/28 18:31:26 steve Exp $
# $OpenBSD: Makefile,v 1.3 2000/02/11 01:10:09 espie Exp $
#

DISTNAME=	ns-src-2.1b5
PKGNAME=	ns-2.1b5
CATEGORIES=	net
MASTER_SITES=	http://www-mash.cs.berkeley.edu/dist/vint/
NEED_VERSION=	1.191

MAINTAINER=	angelos@openbsd.org

BUILD_DEPENDS=	${PREFIX}/lib/libtclcl.a:${PORTSDIR}/devel/tclcl
RUN_DEPENDS=	${PREFIX}/bin/tclsh8.2:${PORTSDIR}/lang/tcl82

WRKDIST=		${WRKDIR}/${PKGNAME}

GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--with-tcl-ver=8.2 --with-tk-ver=8.2

ALL_TARGET=

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ns ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ns.1 ${PREFIX}/man/man1
	mkdir -p ${PREFIX}/share/examples/ns2
	${INSTALL_DATA} ${WRKSRC}/tcl/ex/*.tcl ${PREFIX}/share/examples/ns2
.include <bsd.port.mk>
