#
# $FreeBSD: ports/net/ns/Makefile,v 1.3 1999/11/28 18:31:26 steve Exp $
# $OpenBSD: Makefile,v 1.6 2000/03/27 18:17:30 espie Exp $
#

DISTNAME=	ns-src-2.1b5
PKGNAME=	ns-2.1b5
CATEGORIES=	net
NEED_VERSION=	1.230
MASTER_SITES=	http://www-mash.cs.berkeley.edu/dist/vint/

MAINTAINER=	angelos@openbsd.org

BUILD_DEPENDS=	${PREFIX}/lib/libtclcl.a::devel/tclcl
RUN_DEPENDS=	${PREFIX}/bin/tclsh8.2::lang/tcl82

WRKDIST=		${WRKDIR}/${PKGNAME}

GNU_CONFIGURE=	Yes
CONFIGURE_ARGS=	--with-tcl-ver=8.2 --with-tk-ver=8.2

ALL_TARGET=

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ns ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ns.1 ${PREFIX}/man/man1
	mkdir -p ${PREFIX}/share/examples/ns2
	${INSTALL_DATA} ${WRKSRC}/tcl/ex/*.tcl ${PREFIX}/share/examples/ns2
.include <bsd.port.mk>
