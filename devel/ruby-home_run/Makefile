# $OpenBSD: Makefile,v 1.13 2013/08/07 21:57:51 naddy Exp $

COMMENT =	fast Date/DateTime classes for ruby

BROKEN-sparc64 = Assembler messages: Error: Illegal operands on date_ext.c
DISTNAME =	home_run-1.0.9
REVISION =	0
CATEGORIES =	devel

HOMEPAGE=	https://github.com/jeremyevans/home_run

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
