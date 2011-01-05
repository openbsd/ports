# $OpenBSD: Makefile,v 1.25 2011/01/05 19:00:54 sebastia Exp $
# $FreeBSD: ports/devel/tclcl/Makefile,v 1.4 1999/11/28 18:31:57 steve Exp $

COMMENT=	Tcl/C++ interface used by ns and nam

V=		1.19
REVISION =	0
DISTNAME=	tclcl-src-$V
PKGNAME=	tclcl-$V
CATEGORIES=	devel

HOMEPAGE=	http://www.isi.edu/nsnam/tclcl/index.html

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES +=	x11/tk
MODTK_VERSION =	8.4
WANTLIB=		c m stdc++ otcl>=1

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=otcl-tclcl/}
WRKDIST=	${WRKDIR}/tclcl-$V

LIB_DEPENDS=	lang/otcl

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	--with-tcl-ver=${MODTCL_VERSION} \
		--with-tk-ver=${MODTK_VERSION} \
		--with-tcl=${MODTCL_LIBDIR} \
		--with-tk=${MODTK_LIBDIR}

pre-configure:
	${SUBST_CMD} ${WRKSRC}/otcldoc

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/tcl2c++ ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/otcldoc ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/include/tclcl
	${INSTALL_DATA} ${WRKSRC}/*.h ${PREFIX}/include/tclcl
	${INSTALL_DATA} ${WRKSRC}/libtclcl.a ${PREFIX}/lib
	@ln -sf ${TRUEPREFIX}/lib/libtclcl.a ${PREFIX}/lib/libTcl.a

NO_REGRESS=	Yes

.include <bsd.port.mk>
