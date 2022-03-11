COMMENT =	Neko scripting language runtime and virtual machine

V =		2.3.0
DISTNAME =	v${V:S/./-/g}
PKGNAME =	nekovm-${V}
REVISION =	0
SHARED_LIBS =	neko	0.0	# 2.3.0
CATEGORIES =	lang
HOMEPAGE =	https://nekovm.org
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

WANTLIB += c gc m pthread z

MASTER_SITES =		https://github.com/HaxeFoundation/neko/archive/
MODULES =		devel/cmake
BUILD_DEPENDS =		devel/git
LIB_DEPENDS =		devel/boehm-gc,-main

CONFIGURE_ARGS =	-DNEKO_JIT_DISABLE=ON \
			-DRUN_LDCONFIG=OFF \
			-DWITH_APACHE=OFF \
			-DWITH_MYSQL=OFF \
			-DWITH_NEKOML=OFF \
			-DWITH_REGEXP=OFF \
			-DWITH_SQLITE=OFF \
			-DWITH_SSL=OFF \
			-DWITH_UI=OFF

NO_TEST =		Yes
WRKDIST =		${WRKDIR}/neko-${V:S/./-/g}

do-gen:
	${SUBST_CMD} ${WRKSRC}/CMakeLists.txt

.include <bsd.port.mk>
