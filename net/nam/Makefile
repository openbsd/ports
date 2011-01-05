# $OpenBSD: Makefile,v 1.33 2011/01/05 19:07:59 sebastia Exp $
# $FreeBSD: ports/net/nam/Makefile,v 1.3 1999/11/29 03:46:08 steve Exp $

COMMENT=	UCB/LBNL Network Animator

V=		1.13
DISTNAME=	nam-src-$V
PKGNAME=	nam-$V
REVISION=	1
CATEGORIES=	net

MASTER_SITES= 	${MASTER_SITE_SOURCEFORGE:=nsnam/}

HOMEPAGE=	http://www.isi.edu/nsnam/nam/

# BSD
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES	+=		x11/tk
MODTK_VERSION =		8.4
WANTLIB +=		X11 Xext c m otcl stdc++ z
WANTLIB +=		${MODTK_WANTLIB}
LIB_DEPENDS +=		${MODTK_LIB_DEPENDS}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	devel/tclcl>=1.0b13p0

WRKDIST=	${WRKDIR}/nam-$V

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-tcl-ver=${MODTCL_VERSION} \
		--with-tk-ver=${MODTK_VERSION} \
		--with-tk=${MODTK_LIBDIR} \
		--with-tcl=${MODTCL_LIBDIR} \
		--x-includes=${X11BASE}/include \
		--x-libraries=${X11BASE}/lib

ALL_TARGET=

NO_REGRESS=	Yes

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure

do-install:
	${INSTALL_PROGRAM} ${WRKSRC}/nam ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/nam.1 ${PREFIX}/man/man1
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/nam
	${INSTALL_DATA} ${WRKSRC}/ex/* ${PREFIX}/share/examples/nam

.include <bsd.port.mk>
