#
# $FreeBSD: ports/devel/tclcl/Makefile,v 1.4 1999/11/28 18:31:57 steve Exp $
# $OpenBSD: Makefile,v 1.9 2000/07/14 06:11:05 kevlo Exp $
#

DISTNAME=	tclcl-src-1.0b9
PKGNAME=	tclcl-1.0b9
CATEGORIES=	devel
NEED_VERSION=	1.314
MASTER_SITES=	http://www-mash.cs.berkeley.edu/dist/

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MAINTAINER=	angelos@openbsd.org

LIB_DEPENDS=    tk83.1::x11/tk/8.3 \
		otcl.1::lang/otcl

WRKDIST=	${WRKDIR}/${PKGNAME}

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS=	--with-tcl-ver=8.3 --with-tk-ver=8.3

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcl2c++ ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/otcldoc ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/*.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/libtclcl.a ${PREFIX}/lib
	@ln -sf ${TRUEPREFIX}/lib/libtclcl.a ${PREFIX}/lib/libTcl.a
.include <bsd.port.mk>
