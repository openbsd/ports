#
# $FreeBSD: ports/net/nam/Makefile,v 1.3 1999/11/29 03:46:08 steve Exp $
# $OpenBSD: Makefile,v 1.11 2000/11/24 22:48:28 angelos Exp $
#

DISTNAME=	nam-src-1.0a8
PKGNAME=	nam-1.0a8
CATEGORIES=	net
NEED_VERSION=	1.314
MASTER_SITES= 	ftp://ftp.ee.surrey.ac.uk/pub/Mirrors/ftp.isi.edu/nsnam/ \
		ftp://ftp.isi.edu/nsnam/ \
		http://www.isi.edu/nsnam/dist/

HOMEPAGE=	http://www.isi.edu/nsnam/nam/

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

BUILD_DEPENDS=	${PREFIX}/lib/libtclcl.a::devel/tclcl

WRKDIST=		${WRKDIR}/${PKGNAME}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=	--with-tcl-ver=8.3 --with-tk-ver=8.3

ALL_TARGET=

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nam ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/nam.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nam
	${INSTALL_DATA} ${WRKSRC}/ex/* ${PREFIX}/share/examples/nam

.include <bsd.port.mk>
