# $OpenBSD: Makefile,v 1.1.1.1 2009/06/22 22:37:31 sthen Exp $

# XXX WORK IN PROGRESS.

#ONLY_FOR_ARCHS = alpha i386 m68k sparc sparc64 powerpc vax amd64

ONLY_FOR_ARCHS = i386
# amd64 has an -fPIC problem
# others unknown at this time

COMMENT =	gcc4 front-end for LLVM

LLVM_V =	2.6pre20090621
DISTNAME =	llvm-gcc-4.2-${LLVM_V}.source
PKGNAME =	${DISTNAME:S/.source//:S/gcc-/gcc/}
EXTRACT_SUFX =	.tar.bz2

SHARED_LIBS =	ssp	0.0 \
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

MASTER_SITES =  http://spacehopper.org/mirrors/
#MASTER_SITES = http://llvm.org/releases/${LLVM_V}/

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
SUBST_VARS =		CONFIG LLVM_V
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
			--enable-languages=c,c++ \
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

WRKDIST =		${WRKDIR}/${DISTNAME:S/.source//}
WRKSRC =		${WRKDIST}/obj

post-extract:
	@mkdir -p ${WRKSRC}/gcc

post-install:
	@chown -R ${BINOWN}:${BINGRP} ${PREFIX}/lib/llvm-gcc-${LLVM_V}/gcc/${MACHINE_ARCH}-unknown-openbsd4.5/4.2.1/include

.include <bsd.port.mk>
