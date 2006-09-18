# $OpenBSD: Makefile,v 1.4 2006/09/18 10:21:49 espie Exp $

COMMENT=		"a full-screen X11 task-switcher like Apple's Expose"

DISTNAME=		skippy-0.5.0
CATEGORIES=		x11

MASTER_SITES=		http://thegraveyard.org/files/
EXTRACT_SUFX=		.tar.bz2

HOMEPAGE=		http://thegraveyard.org/skippy.php

# X11
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		Imlib2 X11 Xext Xft Xinerama Xrender c \
			fontconfig freetype m

USE_X11=		Yes

NO_REGRESS=		Yes

BUILD_DEPENDS=          :pkgconfig-*:devel/pkgconfig
LIB_DEPENDS=		Imlib2.>=2::graphics/imlib2

MAKE_FLAGS+=		PKG_CONFIG_PATH="${X11BASE}/lib/pkgconfig"

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/skippy
	${INSTALL_DATA_DIR} ${PREFIX}/share/examples/skippy
	${INSTALL_DATA} ${WRKSRC}/skippyrc-default			\
	    ${PREFIX}/share/examples/skippy
	sed 's,@SAMPLEDIR@,${TRUEPREFIX}/share/examples/skippy/,'	\
	    < ${FILESDIR}/README.OpenBSD				\
	    > ${PREFIX}/share/doc/skippy/README.OpenBSD

.include <bsd.port.mk>
