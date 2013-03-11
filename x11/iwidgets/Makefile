# $OpenBSD: Makefile,v 1.13 2013/03/11 11:46:13 espie Exp $

PKG_ARCH=	*

COMMENT=	Iwidgets Mega Widget Set

VERSION=	4.0.1
DISTNAME=	iwidgets${VERSION}
PKGNAME=	iwidgets-${VERSION}
REVISION =	5

CATEGORIES=	x11 devel

HOMEPAGE=	http://incrtcl.sourceforge.net/iwidgets/

MAINTAINER=	Nikns Siankin <nikns@secure.lv>

# BSD style
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=incrtcl/}

MODULES=	x11/tk
BUILD_DEPENDS=	${MODTK_RUN_DEPENDS}
RUN_DEPENDS=	${MODTK_RUN_DEPENDS} \
		itcl->=3.4,<3.5v0:devel/itcl \
		itk->=3.3,<3.4:x11/itk
TEST_DEPENDS=${RUN_DEPENDS}
# This regression test wants an X11 display
TEST_IS_INTERACTIVE=	Yes

NO_BUILD=	Yes

AUTOCONF_VERSION=2.13
CONFIGURE_STYLE=autoconf dest

CONFIGURE_ARGS=	--with-tcl=${MODTCL_LIBDIR} \
		--with-tk=${MODTK_LIBDIR} \
		--libdir=${MODTCL_TCLDIR} \
		--with-itcl=${MODTCL_TCLDIR}/itcl

FAKE_FLAGS =	SCRIPT_INSTALL_DIR=${DESTDIR}${MODTCL_TCLDIR}/iwidgets

pre-configure:
	@perl -pi -e 's,^\.HS,\.TH,' ${WRKBUILD}/doc/*.n

do-test:
	cd ${WRKSRC} && env IWIDGETS_LIBRARY=${WRKSRC} \
		${MODTK_BIN} tests/all.tcl 

.include <bsd.port.mk>
