#
# $FreeBSD: ports/net/ns/Makefile,v 1.3 1999/11/28 18:31:26 steve Exp $
# $OpenBSD: Makefile,v 1.14 2000/11/25 02:14:31 angelos Exp $
#

#BROKEN=		tclcl API for delay_bind_dispatch changed

DISTNAME=	ns-2.1b6
DISTFILES=	ns-src-2.1b6.tar.gz
PKGNAME=	ns-2.1b6
CATEGORIES=	net
NEED_VERSION=	1.305
MASTER_SITES= ftp://ftp.ee.surrey.ac.uk/pub/Mirrors/ftp.isi.edu/nsnam/ \
ftp://ftp.isi.edu/nsnam/ \
http://www.isi.edu/nsnam/dist/

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

HOMEPAGE=	http://www.isi.edu/nsnam/ns/

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

BUILD_DEPENDS=	${PREFIX}/lib/libtclcl.a::devel/tclcl
RUN_DEPENDS=	${PREFIX}/bin/tclsh8.3::lang/tcl/8.3

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-tcl-ver=8.3 --with-tk-ver=8.3

ALL_TARGET=

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/ns ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/ns.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/ns2
	${INSTALL_DATA} ${WRKSRC}/tcl/ex/*.tcl ${PREFIX}/share/examples/ns2
.include <bsd.port.mk>
