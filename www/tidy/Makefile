# $OpenBSD: Makefile,v 1.28 2019/07/12 20:51:06 sthen Exp $

COMMENT =	correct and clean up HTML and XML

GH_ACCOUNT =	htacg
GH_PROJECT =	tidy-html5
GH_COMMIT =	0873d74f8e20afb73be025d01642e180a014854a
DISTNAME =	tidy-html5-5.7.24
PKGNAME =	${DISTNAME:S/-html5//}
EPOCH=		0

SHARED_LIBS +=  tidy                      2.0 # 5.6

CATEGORIES =	www devel
HOMEPAGE =	https://www.html-tidy.org/

MAINTAINER =	Aaron Bieber <abieber@openbsd.org>

# BSD-like, badly worded, defined in include/tidy.h
PERMIT_PACKAGE =	Yes

WANTLIB += c

MODULES =	devel/cmake

BUILD_DEPENDS =	textproc/libxslt

CONFIGURE_ARGS +=	-DMAN_INSTALL_DIR=${PREFIX}/man/man1

.include <bsd.port.mk>
