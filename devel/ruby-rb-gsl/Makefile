# $OpenBSD: Makefile,v 1.8 2015/07/18 21:07:40 jeremy Exp $

COMMENT =	Ruby interface to GSL

DISTNAME =	rb-gsl-1.16.0.4
PKGNAME =	${DISTNAME:S/rb-//}
REVISION =	0
CATEGORIES =	devel

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

WANTLIB += gsl gslcblas

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-narray,${MODRUBY_FLAVOR}
LIB_DEPENDS =	devel/gsl

CONFIGURE_STYLE =ruby gem ext

.include <bsd.port.mk>
