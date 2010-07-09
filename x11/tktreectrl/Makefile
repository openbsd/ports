# $OpenBSD: Makefile,v 1.1.1.1 2010/07/09 16:43:11 sebastia Exp $

SHARED_ONLY=	Yes

COMMENT=	tree widget extension for Tk

DISTNAME=	tktreectrl-2.2.9
SHLIB_VERSION=	0.0
SHARED_LIBS=	treectrl22 ${SHLIB_VERSION}
CATEGORIES=	x11

HOMEPAGE= 	http://tktreectrl.sourceforge.net/

MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tktreectrl/}

WANTLIB+=	X11

MODULES=	x11/tk
BUILD_DEPENDS=	${MODTK_BUILD_DEPENDS}
RUN_DEPENDS=	${MODTK_RUN_DEPENDS}

SEPARATE_BUILD=	simple
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-tcl=${MODTCL_LIBDIR} \
		--with-tk=${MODTK_LIBDIR} \
		--datadir=${PREFIX}/share/examples \
		--enable-64bit \
		--enable-64bit-vis
REGRESS_IS_INTERACTIVE=	X11
REGRESS_TARGET=		test

SUBST_VARS=	SHLIB_VERSION

pre-configure:
	${SUBST_CMD} ${WRKSRC}/configure
	${MODTCL_TCLSH_ADJ} ${WRKSRC}/demos/demo.tcl

.include <bsd.port.mk>
