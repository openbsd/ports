# $OpenBSD: Makefile,v 1.16 2011/04/09 21:53:41 jsg Exp $

# Note: library search order doesn't match base compilers
# (/usr/local/include before /usr/include).

SHARED_ONLY = Yes

#ONLY_FOR_ARCHS = ${GCC4_ARCHS}
ONLY_FOR_ARCHS = i386 amd64
# others unknown at this time

COMMENT =	gcc4 front-end for LLVM

GCC_V =		4.2.1
LLVM_V =	2.9
DISTNAME =	llvm-gcc-4.2-${LLVM_V}.source
PKGNAME =	${DISTNAME:S/.source//:S/gcc-/gcc/}
EXTRACT_SUFX=	.tgz

SHARED_LIBS =	ssp	1.0 \
		objc	3.0 \
		stdc++	7.0

CATEGORIES =	lang devel

HOMEPAGE =	http://www.llvm.org/

# GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=	c m pthread stdc++
USE_LIBTOOL =	yes
USE_GROFF =	Yes

MASTER_SITES =	http://llvm.org/releases/${LLVM_V}/

BUILD_DEPENDS =	devel/llvm=${LLVM_V} \
		devel/bison

USE_GMAKE =		Yes
CONFIGURE_STYLE =	gnu
TARGLIB =		${PREFIX}/lib/llvm-gcc-${LLVM_V}
CONFIG =		${MACHINE_ARCH}-unknown-openbsd${OSREV}
SUBST_VARS =		CONFIG GCC_V LLVM_V
CONFIGURE_SCRIPT =	../configure
CONFIGURE_ARGS =	--verbose \
			--enable-llvm=${LOCALBASE} \
			--disable-nls \
			--with-system-zlib \
			--disable-libmudflap \
			--disable-libgomp \
			--disable-tls \
			--enable-threads=posix \
			--program-prefix=llvm- \
			--enable-languages=c,c++,objc \
			--with-libiconv-prefix=${LOCALBASE} \
			--libdir=${TARGLIB} \
			--with-gxx-include-dir=${TARGLIB}/include/c++ \
			--libexecdir=${TARGLIB} \
			--infodir=${PREFIX}/llvm-gcc
CONFIGURE_ARGS += --enable-cpp
CONFIGURE_ARGS += --with-gnu-as
CONFIGURE_ARGS += --with-gnu-ld
CONFIGURE_ARGS += ${CONFIGURE_SHARED}

CONFIGURE_ARGS +=	--enable-checking

MODGNU_CONFIG_GUESS_DIRS = ${WRKSRC} ${WRKSRC}/gcc

WRKSRC =		${WRKDIST}/obj

# See bsd.lib.mk:162
.if ${MACHINE_ARCH:Mi386*}
PKG_ARGS+=      -Dno_i386=0
.else
PKG_ARGS+=      -Dno_i386=1
.endif

LIBTOOLssp_VERSION =	${LIBssp_VERSION:S/./:/}
LIBTOOLobjc_VERSION =	${LIBobjc_VERSION:S/./:/}
LIBTOOLstdc++_VERSION =	${LIBstdc++_VERSION:S/./:/}
SUBST_VARS +=	LIBTOOLssp_VERSION LIBTOOLobjc_VERSION LIBTOOLstdc++_VERSION

post-extract:
	@mkdir -p ${WRKSRC}/gcc

pre-configure:
	${SUBST_CMD} ${WRKDIST}/lib{{stdc++-v3,objc}/configure,ssp/libtool-version}

post-install:
	@chown -R ${BINOWN}:${BINGRP} ${PREFIX}/lib/llvm-gcc-${LLVM_V}/gcc/${CONFIG}/${GCC_V}/include

.include <bsd.port.mk>
