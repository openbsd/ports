# $OpenBSD: Makefile,v 1.3 2013/10/26 23:55:36 jeremy Exp $

COMMENT =	Ruby interface to GSL

DISTNAME =	gsl-1.14.7
REVISION =	0
CATEGORIES =	devel

HOMEPAGE=	http://rb-gsl.rubyforge.org/

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
