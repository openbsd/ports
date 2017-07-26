# $OpenBSD: Makefile,v 1.33 2017/07/26 22:45:19 sthen Exp $

COMMENT=	Tcl/C++ interface used by ns and nam

V=		1.20
DISTNAME=	tclcl-src-$V
PKGNAME=	tclcl-$V
REVISION =	2
CATEGORIES=	devel
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

HOMEPAGE=	http://otcl-tclcl.sourceforge.net/tclcl/

# BSD
PERMIT_PACKAGE_CDROM=   Yes

MODULES +=	x11/tk
WANTLIB=		c m ${COMPILER_LIBCXX} otcl>=1

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=otcl-tclcl/}
WRKDIST=	${WRKDIR}/tclcl-$V

LIB_DEPENDS=	lang/otcl

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-tcl-ver=${MODTCL_VERSION} \
		--with-tk-ver=${MODTK_VERSION} \
		--with-tcl=${LOCALBASE} \
		--with-tk=${LOCALBASE}

pre-configure:
	@${MODTCL_TCLSH_ADJ} ${WRKSRC}/otcldoc

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcl2c++ ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/otcldoc ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/include/tclcl
	${INSTALL_DATA} ${WRKSRC}/*.h ${PREFIX}/include/tclcl
	${INSTALL_DATA} ${WRKSRC}/libtclcl.a ${PREFIX}/lib
	@ln -sf ${TRUEPREFIX}/lib/libtclcl.a ${PREFIX}/lib/libTcl.a

NO_TEST=	Yes

.include <bsd.port.mk>
