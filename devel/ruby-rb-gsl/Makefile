# $OpenBSD: Makefile,v 1.7 2015/06/23 07:52:11 jasper Exp $

COMMENT =	Ruby interface to GSL

DISTNAME =	rb-gsl-1.16.0.4
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
