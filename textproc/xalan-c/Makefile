COMMENT =		Apache project to transform XML documents using XSLT (C++)

V =			1.12
DISTNAME =		xalan_c-${V}
PKGNAME =		xalan-c-${V}

SHARED_LIBS +=		xalan-c		0.0	# 112.0
SHARED_LIBS +=		xalanMsg	0.0	# 1.12

HOMEPAGE =		https://xalan.apache.org/

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

CATEGORIES =		textproc

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB =		${COMPILER_LIBCXX} c icudata icui18n icuuc m xerces-c

MASTER_SITES =		https://dlcdn.apache.org/xalan/xalan-c/sources/

# -std=gnu++14
COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

LIB_DEPENDS =		textproc/xerces-c \
			textproc/icu4c

CONFIGURE_ARGS +=	-Ddoxygen=OFF

.include <bsd.port.mk>
