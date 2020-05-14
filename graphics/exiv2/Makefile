# $OpenBSD: Makefile,v 1.33 2020/05/14 19:16:24 rsadowski Exp $

COMMENT=	image metadata manipulation

CATEGORIES=	graphics devel

DISTNAME=	exiv2-0.27.2-Source
PKGNAME=	exiv2-0.27.2
EPOCH=		0

SHARED_LIBS +=  exiv2                12.0      # 14.0

HOMEPAGE=	https://www.exiv2.org/

# GPLv2+
PERMIT_PACKAGE=	Yes

WANTLIB += ${COMPILER_LIBCXX} c expat iconv intl m z

MASTER_SITES =		https://www.exiv2.org/builds/

COMPILER =		base-clang ports-gcc base-gcc

MODULES =		devel/cmake

BUILD_DEPENDS =		devel/gettext,-tools
LIB_DEPENDS =		devel/gettext,-runtime

CONFIGURE_ARGS =	-DEXIV2_ENABLE_NLS=ON

# dos line-endings in file needing patch
post-extract:
	@cd ${WRKSRC} && perl -i -pe 's/\r$$//' cmake/compilerFlags.cmake

.include <bsd.port.mk>
.if ${USE_CCACHE:L} == "yes"
CONFIGURE_ARGS +=	-DBUILD_WITH_CCACHE=0N
.endif
