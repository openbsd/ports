# $OpenBSD: Makefile,v 1.6 2019/08/10 19:41:07 naddy Exp $

# Should work on all other archs.
NOT_FOR_ARCHS =	aarch64 m88k

COMMENT =	GNU Pascal compiler
DISTNAME =	gpc-20070904
REVISION =	3
CATEGORIES =	lang

HOMEPAGE =	https://www.gnu-pascal.de/gpc/h-index.html
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB += c gmp mpfr

MASTER_SITES =	https://mirrors.nycbug.org/pub/distfiles/

BUILD_DEPENDS =	devel/bison \
		devel/libexecinfo \
		textproc/gsed \
		${MODGNU_AUTOCONF_DEPENDS}

LIB_DEPENDS =	devel/gmp \
		devel/mpfr

# --disable-shared because upstream claims that the shared
# libgpc doesn't work.
CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS = \
	--verbose \
	--disable-nls  \
	--disable-checking \
	--with-system-zlib \
	--disable-libmudflap \
	--disable-libgomp \
	--disable-libssp \
	--disable-tls \
	--disable-shared \
	--with-gnu-ld \
	--with-gnu-as \
	--enable-threads=posix \
	--enable-wchar_t \
	--with-gmp="${LOCALBASE}" \
	--disable-libstdcxx-pch \
	--disable-bootstrap \
	--enable-languages=pascal

SEPARATE_BUILD =	Yes

USE_GMAKE =	Yes
MAKE_ENV =	AUTOCONF_VERSION="${AUTOCONF_VERSION}"

# We don't want to test gcc-4.2.4...
# And the gpc tests are subtly broken on 4.y.z
NO_TEST =	Yes

AUTOCONF_VERSION =	2.59

.if ${MACHINE_ARCH} == "powerpc"
PKG_ARGS += -DPPC=1
.else
PKG_ARGS += -DPPC=0
.endif

CONFIG =	${MACHINE_ARCH}-unknown-openbsd${OSREV}
SUBST_VARS +=	CONFIG

# We don't really want gcc-4.2.4 laying around...
# gpc-run.1 is an empty file?
# The doc folder is empty?
# The info files are broken?
post-install:
	@rm -f ${PREFIX}/bin/*gcc*
	@rm -f ${PREFIX}/bin/{cpp,gcc,gccbug,gcov}
	@rm -rf ${PREFIX}/lib/fpic
	@rm -f ${PREFIX}/lib/libiberty.a
	@rm -rf ${PREFIX}/lib/${CONFIG}/4.2.4/{include,install-tools}
	@rm -rf ${PREFIX}/lib/gcc/${CONFIG}/4.2.4/{fpic,install-tools}
	@cp ${PREFIX}/lib/gcc/${CONFIG}/4.2.4/include/gpc-in-c.h \
		${PREFIX}/lib/gcc/${CONFIG}/4.2.4
	@rm -rf ${PREFIX}/lib/gcc/${CONFIG}/4.2.4/include/*
	@mv ${PREFIX}/lib/gcc/${CONFIG}/4.2.4/gpc-in-c.h \
		${PREFIX}/lib/gcc/${CONFIG}/4.2.4/include
	@rm -rf ${PREFIX}/libexec/gcc/${CONFIG}/4.2.4/{cc1,fpic,install-tools}
	@rm -f ${PREFIX}/man/man1/{cpp,gcc,gcov,gpc-run}.1
	@rm -rf ${PREFIX}/man/man7
	@rm -rf ${PREFIX}/info/*
	@rm -rf ${PREFIX}/doc

.include <bsd.port.mk>
