#	$OpenBSD: Makefile,v 1.2 2016/05/15 00:03:43 jsg Exp $

COMMENT=	tool to analyse \#includes in C and C++ source files
CATEGORIES=	devel
DISTNAME=	include-what-you-use-0.6.src
PKGNAME=	include-what-you-use-0.6

HOMEPAGE=	http://include-what-you-use.org
MASTER_SITES=	${HOMEPAGE}/downloads/
WRKDIST=	${WRKDIR}/include-what-you-use

MAINTAINER=	Jonathan Gray <jsg@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	c curses form m pthread z
BUILD_DEPENDS=	devel/llvm

MODULES=		devel/cmake gcc4 lang/python
MODGCC4_LANGS =		c++
MODGCC4_ARCHS =		*
CONFIGURE_ARGS=		-DIWYU_LLVM_ROOT_PATH=${LOCALBASE}

MODPY_ADJ_FILES = fix_includes.py iwyu_tool.py

.include <bsd.port.mk>
