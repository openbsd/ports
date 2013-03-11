# $OpenBSD: Makefile,v 1.28 2013/03/11 10:50:31 espie Exp $

COMMENT=	Tcl/C++ interface used by ns and nam

V=		1.20
DISTNAME=	tclcl-src-$V
PKGNAME=	tclcl-$V
CATEGORIES=	devel
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

HOMEPAGE=	http://otcl-tclcl.sourceforge.net/tclcl/

# BSD
PERMIT_PACKAGE_CDROM=   Yes

MODULES +=	x11/tk
WANTLIB=		c m stdc++ otcl>=1

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
