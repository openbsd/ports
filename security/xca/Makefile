COMMENT=	create and manage certificates, CSRs, keys, etc

V=		2.6.0
DISTNAME=	xca-$V
CATEGORIES=	security x11

HOMEPAGE=	https://hohnstaedt.de/xca/

MAINTAINER=	Stuart Henderson <stu.ports@spacehopper.org>

# BSD
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX}
WANTLIB += GL Qt6Core Qt6Gui Qt6Help Qt6Sql Qt6Widgets
WANTLIB += c crypto m

SITES=		https://github.com/chris2511/xca/releases/download/RELEASE.$V/

MODULES=	x11/qt6 \
		devel/cmake

USE_GMAKE=	Yes

CFLAGS+=	-I${LOCALBASE}/include
CXXFLAGS+=	-I${LOCALBASE}/include -std=c++11

LIB_DEPENDS=	x11/qt6/qttools
RUN_DEPENDS=	devel/desktop-file-utils \
		misc/shared-mime-info
BUILD_DEPENDS=	textproc/py-sphinx

NO_TEST=	Yes

post-install:
	gunzip ${PREFIX}/man/man1/xca.1.gz

.include <bsd.port.mk>
