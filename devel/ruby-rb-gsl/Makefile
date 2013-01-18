# $OpenBSD: Makefile,v 1.1.1.1 2013/01/18 17:07:32 jasper Exp $

COMMENT =	Ruby interface to GSL

DISTNAME =	gsl-1.14.7
CATEGORIES =	devel

HOMEPAGE=	http://rb-gsl.rubyforge.org/

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =	lang/ruby

WANTLIB += gsl gslcblas

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	${MODRUBY_ICONV_DEPENDS} \
		devel/ruby-narray,${MODRUBY_FLAVOR}
LIB_DEPENDS =	devel/gsl

CONFIGURE_STYLE =ruby gem ext

.include <bsd.port.mk>
