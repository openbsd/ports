# Memory hog, stuck for days on the same file (configoptions.cpp) during build.
# XXX check with different optimizer level? see doc/install.doc
NOT_FOR_ARCHS=	m88k sh
BROKEN-alpha=	.got subsegment exceeds 64K

COMMENT=	GUI front-end for doxygen

VERSION=	1.14.0
DISTNAME=	doxygen-${VERSION}.src
PKGNAME=	doxygen-gui-${VERSION}

CATEGORIES=	devel textproc

HOMEPAGE=	https://www.doxygen.org/

MAINTAINER=	Rafael Sadowski <rsadowski@openbsd.org>

# GPLv2
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} GL Qt6Core Qt6Gui Qt6Widgets Qt6Xml
WANTLIB += c m

COMPILER =	base-clang ports-gcc base-gcc

SITES=		https://doxygen.nl/files/

LIB_DEPENDS=	${MODQT_LIB_DEPENDS}

MODULES=	devel/cmake \
		x11/qt6 \
		lang/python

MODPY_RUNDEP=	No

.if ${MACHINE_ARCH} == "mips64" || ${MACHINE_ARCH} == "mips64el"
CXXFLAGS+=	-mxgot
.endif

BUILD_DEPENDS+=	devel/bison \
		devel/git \
		converters/libiconv

RUN_DEPENDS=	devel/doxygen

CONFIGURE_ARGS=	-Dbuild_wizard=ON \
		-Dforce_qt=Qt6

WRKDIST=	${WRKDIR}/doxygen-${VERSION}

do-install:
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/doxywizard ${PREFIX}/bin
	${INSTALL_MAN} ${WRKBUILD}/man/doxywizard.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
