# $OpenBSD: Makefile,v 1.24 2010/11/15 19:46:09 espie Exp $
# $FreeBSD: ports/devel/tclcl/Makefile,v 1.4 1999/11/28 18:31:57 steve Exp $

COMMENT=	Tcl/C++ interface used by ns and nam

V=		1.19
DISTNAME=	tclcl-src-$V
PKGNAME=	tclcl-$V
CATEGORIES=	devel

HOMEPAGE=	http://www.isi.edu/nsnam/tclcl/index.html

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c m stdc++ otcl>=1

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=otcl-tclcl/}
WRKDIST=	${WRKDIR}/tclcl-$V

LIB_DEPENDS=	lang/otcl

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-tcl-ver=8.4 --with-tk-ver=8.4

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcl2c++ ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/otcldoc ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/include/tclcl
	${INSTALL_DATA} ${WRKSRC}/*.h ${PREFIX}/include/tclcl
	${INSTALL_DATA} ${WRKSRC}/libtclcl.a ${PREFIX}/lib
	@ln -sf ${TRUEPREFIX}/lib/libtclcl.a ${PREFIX}/lib/libTcl.a

NO_REGRESS=	Yes

.include <bsd.port.mk>
