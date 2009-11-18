# $OpenBSD: Makefile,v 1.5 2009/11/18 00:49:09 sthen Exp $

# XXX WORK IN PROGRESS.

#ONLY_FOR_ARCHS = alpha i386 m68k sparc sparc64 powerpc vax amd64

ONLY_FOR_ARCHS = i386
# amd64 has an -fPIC problem
# others unknown at this time

COMMENT =	gcc4 front-end for LLVM

GCC_V =		4.2.1
LLVM_V =	2.6
DISTNAME =	llvm-gcc-4.2-${LLVM_V}.source
PKGNAME =	${DISTNAME:S/.source//:S/gcc-/gcc/}p0

SHARED_LIBS =	ssp	0.0 \
		objc	2.0 \
		stdc++	6.9	# XXX not controllable yet

CATEGORIES =	lang devel

HOMEPAGE =	http://www.llvm.org/

# GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB +=	c m pthread
USE_LIBTOOL =	yes

#MASTER_SITES =  http://spacehopper.org/mirrors/
MASTER_SITES = http://llvm.org/releases/${LLVM_V}/

MODULES =	gcc4
LIB_DEPENDS =	elf::devel/libelf
BUILD_DEPENDS =	:llvm-${LLVM_V}:devel/llvm \
		::devel/bison
MODGCC4_LANGS =	c c++
MODGCC4_ARCHES =*

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

WRKDIST=		${WRKDIR}/${DISTNAME:S/gcc-/gcc/}
WRKSRC =		${WRKDIST}/obj

post-extract:
	@mkdir -p ${WRKSRC}/gcc

post-install:
	@chown -R ${BINOWN}:${BINGRP} ${PREFIX}/lib/llvm-gcc-${LLVM_V}/gcc/${CONFIG}/${GCC_V}/include

.include <bsd.port.mk>
