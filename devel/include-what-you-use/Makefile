#	$OpenBSD: Makefile,v 1.6 2017/03/14 17:30:30 ajacoutot Exp $

COMMENT=	tool to analyse \#includes in C and C++ source files
CATEGORIES=	devel
DISTNAME=	include-what-you-use-0.7.src
PKGNAME=	include-what-you-use-0.7
REVISION=	1

HOMEPAGE=	http://include-what-you-use.org
MASTER_SITES=	${HOMEPAGE}/downloads/
WRKDIST=	${WRKDIR}/llvm/tools/clang/tools/include-what-you-use

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c curses form m pthread z
BUILD_DEPENDS=	devel/llvm>=4.0.0

MODULES=		devel/cmake gcc4 lang/python
MODGCC4_LANGS =		c++
MODGCC4_ARCHS =		*
CONFIGURE_ARGS=		-DIWYU_LLVM_ROOT_PATH=${LOCALBASE}

MODPY_ADJ_FILES = fix_includes.py iwyu_tool.py

.include <bsd.port.mk>
