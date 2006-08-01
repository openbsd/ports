# $OpenBSD: Makefile,v 1.19 2006/08/01 23:39:08 espie Exp $
# $FreeBSD: ports/devel/tclcl/Makefile,v 1.4 1999/11/28 18:31:57 steve Exp $

COMMENT=	"Tcl/C++ interface used by ns and nam"

V=1.0b13
DISTFILES=	tclcl-src-$V.tar.gz
DISTNAME=	tclcl-$V
CATEGORIES=	devel

HOMEPAGE=	http://www.isi.edu/nsnam/tclcl/index.html

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		c m stdc++

MASTER_SITES=	http://www.isi.edu/nsnam/dist/

LIB_DEPENDS=	otcl.>=1::lang/otcl

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-tcl-ver=8.3 --with-tk-ver=8.3

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcl2c++ ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/otcldoc ${PREFIX}/bin
	${INSTALL_DATA} ${WRKSRC}/*.h ${PREFIX}/include
	${INSTALL_DATA} ${WRKSRC}/libtclcl.a ${PREFIX}/lib
	@ln -sf ${TRUEPREFIX}/lib/libtclcl.a ${PREFIX}/lib/libTcl.a

NO_REGRESS=	Yes

.include <bsd.port.mk>
