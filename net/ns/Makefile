#
# $FreeBSD: ports/net/ns/Makefile,v 1.3 1999/11/28 18:31:26 steve Exp $
# $OpenBSD: Makefile,v 1.9 2000/09/15 03:58:22 turan Exp $
#

BROKEN=		compile errors.

DISTNAME=	ns-2.1b5
DISTFILES=	ns-src-2.1b5.tar.gz
PKGNAME=	ns-2.1b5
CATEGORIES=	net
NEED_VERSION=	1.230
MASTER_SITES= ftp://ftp.ee.surrey.ac.uk/pub/Mirrors/mash.cs.berkeley.edu/dist/vint/ \
http://www-mash.cs.berkeley.edu/dist/vint/

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

HOMEPAGE=	http://www-mash.cs.berkeley.edu/ns/

MAINTAINER=	angelos@openbsd.org

BUILD_DEPENDS=	${PREFIX}/lib/libtclcl.a::devel/tclcl
RUN_DEPENDS=	${PREFIX}/bin/tclsh8.3::lang/tcl/8.3

GNU_CONFIGURE=	Yes
CONFIGURE_ARGS=	--with-tcl-ver=8.3 --with-tk-ver=8.3
FAKE=		Yes

ALL_TARGET=

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ns ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ns.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ns2
	${INSTALL_DATA} ${WRKSRC}/tcl/ex/*.tcl ${PREFIX}/share/examples/ns2
.include <bsd.port.mk>
