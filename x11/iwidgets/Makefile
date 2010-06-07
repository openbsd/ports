# $OpenBSD: Makefile,v 1.4 2010/06/07 14:40:47 sthen Exp $

PKG_ARCH=	*

COMMENT=	Iwidgets Mega Widget Set

VERSION=	4.0.1
DISTNAME=	iwidgets${VERSION}
PKGNAME=	iwidgets-${VERSION}p0

CATEGORIES=	x11 devel

HOMEPAGE=	http://incrtcl.sourceforge.net/iwidgets/

MAINTAINER=	Nikns Siankin <nikns@secure.lv>

# BSD style
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=incrtcl/}

MODULES=	x11/tk
BUILD_DEPENDS=	${MODTK_RUN_DEPENDS}
RUN_DEPENDS=	${BUILD_DEPENDS} \
		:itcl->=3.4,<3.5:devel/itcl \
		:itk->=3.3,<3.4:x11/itk
REGRESS_DEPENDS=${RUN_DEPENDS}
# This regression test wants an X11 display
REGRESS_IS_INTERACTIVE=	Yes

NO_BUILD=	Yes

AUTOCONF_VERSION=2.13
CONFIGURE_STYLE=autoconf dest

CONFIGURE_ARGS=	--with-tcl=${MODTCL_LIBDIR} \
		--with-tk=${MODTK_LIBDIR} \
		--with-itcl=${LOCALBASE}/itcl3.4

CONFIGURE_ENV=	ITCL_VERSION=3.4

pre-configure:
	@perl -pi -e 's,^\.HS,\.TH,' ${WRKBUILD}/doc/*.n

do-regress:
	cd ${WRKSRC} && env IWIDGETS_LIBRARY=${WRKSRC} \
		${MODTK_BIN} tests/all.tcl 

.include <bsd.port.mk>
