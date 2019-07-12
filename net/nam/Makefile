# $OpenBSD: Makefile,v 1.43 2019/07/12 21:02:23 sthen Exp $

COMMENT=	UCB/LBNL Network Animator

V=		1.15
DISTNAME=	nam-src-$V
PKGNAME=	nam-$V
REVISION =	3
CATEGORIES=	net
MAINTAINER =	Stuart Cassoff <stwo@users.sourceforge.net>

MASTER_SITES= 	${MASTER_SITE_SOURCEFORGE:=nsnam/}

HOMEPAGE=	http://nsnam.sourceforge.net/

# BSD
PERMIT_PACKAGE=	Yes

MODULES	+=		x11/tk
WANTLIB +=		X11 Xext c m otcl ${COMPILER_LIBCXX} z
WANTLIB +=		${MODTK_WANTLIB}
LIB_DEPENDS +=		${MODTK_LIB_DEPENDS}

COMPILER =		base-clang ports-gcc base-gcc

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/tclcl
LIB_DEPENDS=	lang/otcl
WRKDIST=	${WRKDIR}/nam-$V

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-tcl-ver=${MODTCL_VERSION} \
		--with-tk-ver=${MODTK_VERSION} \
		--with-tk=${LOCALBASE} \
		--with-tcl=${LOCALBASE} \
		--with-tclcl=${LOCALBASE} \
		--x-includes=${X11BASE}/include \
		--x-libraries=${X11BASE}/lib

ALL_TARGET=

NO_TEST=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nam ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/nam.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nam
	${INSTALL_DATA} ${WRKSRC}/ex/* ${PREFIX}/share/examples/nam

.include <bsd.port.mk>
