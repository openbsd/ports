# $OpenBSD: Makefile,v 1.12 2013/05/07 23:43:49 jeremy Exp $

COMMENT =	fast Date/DateTime classes for ruby

BROKEN-sparc64 = Assembler messages: Error: Illegal operands on date_ext.c
DISTNAME =	home_run-1.0.9
CATEGORIES =	devel

HOMEPAGE=	http://github.com/jeremyevans/home_run

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# MIT License
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem ext
TEST_DEPENDS = devel/ruby-mspec,${MODRUBY_FLAVOR} \
		${FULLPKGNAME}:${BUILD_PKGPATH}
MODRUBY_TEST = rake
do-test:
	cd ${WRKSRC} && ${RUBY} -S home_run ${RAKE}

.include <bsd.port.mk>
