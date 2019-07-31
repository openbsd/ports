# $OpenBSD: Makefile,v 1.1.1.1 2019/07/31 13:30:28 espie Exp $

COMMENT = 	C++ template library for function minimization
DISTNAME = 	ensmallen-1.15.1
CATEGORIES = 	math
HOMEPAGE = 	http://www.ensmallen.org/
MAINTAINER =	Marc Espie <espie@openbsd.org>

# BSD
PERMIT_PACKAGE = Yes

MASTER_SITES =	${HOMEPAGE}/files/

COMPILER = 	base-clang ports-gcc
MODULES += 	devel/cmake

# Can't be a LIB_DEPENDS since ensmallen only installs headers.
BUILD_DEPENDS += math/armadillo

RUN_DEPENDS += math/armadillo

CONFIGURE_STYLE = cmake

.include <bsd.port.mk>
