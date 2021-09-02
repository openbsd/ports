# $OpenBSD: Makefile,v 1.36 2021/09/02 09:37:57 ajacoutot Exp $

COMMENT=	image metadata manipulation

CATEGORIES=	graphics devel

DISTNAME=	exiv2-0.27.4-Source
PKGNAME=	exiv2-0.27.4
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

FIX_CRLF_FILES =	cmake/compilerFlags.cmake

# XXX ninja: error: unknown target 'test', did you mean 'tests'?
NO_TEST =		Yes

.include <bsd.port.mk>
.if ${USE_CCACHE:L} == "yes"
CONFIGURE_ARGS +=	-DBUILD_WITH_CCACHE=0N
.endif
