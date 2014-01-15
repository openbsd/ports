# $OpenBSD: Makefile,v 1.4 2014/01/15 02:13:58 jeremy Exp $

COMMENT =	Ruby interface to GSL

DISTNAME =	gsl-1.14.7
REVISION =	1
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
