#	$OpenBSD: Makefile,v 1.15 2019/02/16 12:06:23 jsg Exp $

COMMENT=	tool to analyse \#includes in C and C++ source files
CATEGORIES=	devel
DISTNAME=	include-what-you-use-0.11.src
PKGNAME=	include-what-you-use-0.11
REVISION=	0

HOMEPAGE=	http://include-what-you-use.org
MASTER_SITES=	${HOMEPAGE}/downloads/
WRKDIST=	${WRKDIR}/include-what-you-use

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c curses execinfo form m pthread z
LLVM_V=		7.0.1
BUILD_DEPENDS=	devel/llvm>=${LLVM_V}
RUN_DEPENDS=	devel/llvm>=${LLVM_V}
LIB_DEPENDS=	devel/libexecinfo

MODULES=		devel/cmake lang/python
COMPILER=		base-clang ports-gcc
COMPILER_LANGS=		c++

MODPY_ADJ_FILES = fix_includes.py iwyu_tool.py

.include <bsd.port.mk>
