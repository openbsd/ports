COMMENT =		XML/XSLT library

V =			1.12
DISTNAME =		xalan_c-$V
PKGNAME =		xalan-c-$V
REVISION =		1

SHARED_LIBS +=  xalan-c                   0.0 # 0.0
SHARED_LIBS +=  xalanMsg                  0.0 # 0.0

CATEGORIES =		textproc

HOMEPAGE =		https://apache.github.io/xalan-c/

MAINTAINER =		Pascal Stumpf <pascal@stumpf.co>

# Apache2
PERMIT_PACKAGE =	Yes

WANTLIB += ${COMPILER_LIBCXX} c icudata icui18n icuuc m xerces-c

SITES =			${SITE_APACHE:=xalan/xalan-c/sources/}

COMPILER =		base-clang ports-gcc

MODULES =		devel/cmake

LIB_DEPENDS =		textproc/xerces-c

CONFIGURE_ARGS =	-Ddoxygen=off

.include <bsd.port.mk>
