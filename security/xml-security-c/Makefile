COMMENT =		C++ implementation of W3C security standards for XML

V =			2.0.4
DISTNAME =		xml-security-c-${V}
CATEGORIES =		security textproc

SHARED_LIBS +=		xml-security-c	0.0	# 20.4

HOMEPAGE =		https://santuario.apache.org

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX} c crypto icudata icui18n icuuc m
WANTLIB +=		xalan-c xalanMsg xerces-c

MASTER_SITES =		https://dlcdn.apache.org/santuario/c-library/

# C++
COMPILER =		base-clang ports-gcc base-gcc

LIB_DEPENDS =		textproc/icu4c \
			textproc/xalan-c \
			textproc/xerces-c>=3.2

CONFIGURE_STYLE =	simple

# ChangeLog lists --with-xerces and --with-xalan, but
# a) configure does not support --with-xerces
# b) configure does not use pkg-config(1) for xalan
# c) passing xalan_CXXFLAGS and xalan_LIBS does not work
CONFIGURE_ARGS +=	--with-xalan=/usr/local

# configure: WARNING: NSS is no longer officially supported
CONFIGURE_ARGS +=	--without-nss \
			--with-openssl

# Do not pick up coreutils gmakedir(1) as "race-free mkdir -p"
CONFIGURE_ARGS +=	ac_cv_path_mkdir=/bin/mkdir

do-test:
	${WRKBUILD}/xsec/xsec-xtest

.include <bsd.port.mk>
