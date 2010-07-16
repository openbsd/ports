# $OpenBSD: Makefile,v 1.1.1.1 2010/07/16 08:30:27 sebastia Exp $

SHARED_ONLY=    Yes

COMMENT=	drag n drop extension for Tk

DISTNAME=	tkdnd-1.0a2
SHARED_LIBS=	tkdnd 0.0
CATEGORIES=	x11

HOMEPAGE= 	http://tkdnd.sourceforge.net/

MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=tkdnd/}

MODULES=	x11/tk
BUILD_DEPENDS=	${MODTK_BUILD_DEPENDS}
RUN_DEPENDS=    ${MODTK_RUN_DEPENDS}

WANTLIB += X11 Xau Xdmcp Xext Xft Xrender Xss expat fontconfig
WANTLIB += freetype m z pthread pthread-stubs xcb

USE_GMAKE=	yes
WRKSRC=		${WRKDIR}/${DISTNAME}/unix
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-tclinclude=${MODTCL_INCDIR} \
		--with-tcl=${MODTCL_LIBDIR} \
		--with-tk=${MODTK_LIBDIR} \
		--datadir=${PREFIX}/share/examples \
		--prefix=${WRKINST}
CONFIGURE_ENV=	CFLAGS+=-I${X11BASE}/include
REGRESS_TARGET=	tests
REGRESS_IS_INTERACTIVE= X11

SUBST_VARS=     LIBtkdnd_VERSION MODTK_INCDIR DESTDIR

pre-configure:
	${SUBST_CMD} ${WRKSRC}/Makefile.in ${WRKSRC}/configure  ${WRKSRC}/mkIndex.tcl.in
	${MODTCL_TCLSH_ADJ} ${WRKSRC}/../demo/dnddemo.tcl ${WRKSRC}/../demo/newtest.tcl

post-install:
	${INSTALL_DATA} ${WRKBUILD}/../lib/tkdnd/pkgIndex.tcl ${PREFIX}/lib/tkdnd/

.include <bsd.port.mk>
