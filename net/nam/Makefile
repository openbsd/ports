#
# $FreeBSD: ports/net/nam/Makefile,v 1.3 1999/11/29 03:46:08 steve Exp $
# $OpenBSD: Makefile,v 1.7 2000/04/21 20:29:54 angelos Exp $
#

DISTNAME=	nam-src-1.0a7
PKGNAME=	nam-1.0a7
CATEGORIES=	net
NEED_VERSION=	 1.230
FAKE=No
MASTER_SITES=	http://www-mash.cs.berkeley.edu/dist/vint/

MAINTAINER=	angelos@openbsd.org

LICENSE_TYPE=           BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

BUILD_DEPENDS=	${PREFIX}/lib/libtclcl.a::devel/tclcl

WRKDIST=		${WRKDIR}/${PKGNAME}

GNU_CONFIGURE=	Yes
CONFIGURE_ARGS=	--with-tcl-ver=8.2 --with-tk-ver=8.2

ALL_TARGET=

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nam ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/nam.1 ${PREFIX}/man/man1
	mkdir -p ${PREFIX}/share/examples/nam
	${INSTALL_DATA} ${WRKSRC}/ex/* ${PREFIX}/share/examples/nam
.include <bsd.port.mk>
