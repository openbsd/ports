COMMENT =		C++ implementation of W3C security standards for XML

V =			2.0.4
REVISION =		2
DISTNAME =		xml-security-c-${V}
CATEGORIES =		security textproc

SHARED_LIBS +=		xml-security-c	1.0	# 20.4

HOMEPAGE =		https://santuario.apache.org

MAINTAINER =		Klemens Nanni <kn@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

WANTLIB +=		${COMPILER_LIBCXX} c crypto icudata icui18n icuuc m
WANTLIB +=		xerces-c

SITES =			https://dlcdn.apache.org/santuario/c-library/

# C++
COMPILER =		base-clang ports-gcc

LIB_DEPENDS =		textproc/icu4c \
			textproc/xerces-c>=3.2

CONFIGURE_STYLE =	gnu

# dead upstream
CONFIGURE_ARGS +=	--without-xalan

# configure: WARNING: NSS is no longer officially supported
CONFIGURE_ARGS +=	--without-nss \
			--with-openssl

do-test:
	${WRKBUILD}/xsec/xsec-xtest

.include <bsd.port.mk>
