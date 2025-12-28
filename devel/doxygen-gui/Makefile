COMMENT=	GUI front-end for doxygen

VERSION=	1.15.0
DISTNAME=	doxygen-${VERSION}.src
PKGNAME=	doxygen-gui-${VERSION}

CATEGORIES=	devel textproc

HOMEPAGE=	https://www.doxygen.org/

MAINTAINER=	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Widgets Qt6Xml
WANTLIB += c m

# C++20
COMPILER =	base-clang ports-gcc

SITES=		https://doxygen.nl/files/

LIB_DEPENDS=	${MODQT_LIB_DEPENDS}

MODULES=	devel/cmake \
		x11/qt6 \
		lang/python

MODPY_RUNDEP=	No

.if ${MACHINE_ARCH} == "mips64" || ${MACHINE_ARCH} == "mips64el"
CXXFLAGS+=	-mxgot
.endif

BUILD_DEPENDS+=	converters/libiconv \
		devel/bison \
		devel/fmt \
		devel/git \
		devel/spdlog

RUN_DEPENDS=	devel/doxygen

CONFIGURE_ARGS=	-Dbuild_wizard=ON \
		-Dforce_qt=Qt6 \
		-Duse_sys_spdlog=ON \
		-Duse_sys_fmt=ON

WRKDIST=	${WRKDIR}/doxygen-${VERSION}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/doxywizard ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/man/doxywizard.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
