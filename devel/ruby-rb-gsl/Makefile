# $OpenBSD: Makefile,v 1.5 2014/09/24 06:27:41 jasper Exp $

COMMENT =	Ruby interface to GSL

DISTNAME =	rb-gsl-1.16.0.2
PKGNAME =	${DISTNAME:S/rb-//}
CATEGORIES =	devel

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

WANTLIB += gsl gslcblas

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	${MODRUBY_ICONV_DEPENDS} \
		devel/ruby-narray,${MODRUBY_FLAVOR}
LIB_DEPENDS =	devel/gsl

CONFIGURE_STYLE =ruby gem ext

.include <bsd.port.mk>
