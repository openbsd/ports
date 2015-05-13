# $OpenBSD: Makefile,v 1.16 2015/05/13 18:36:49 jasper Exp $

COMMENT =	execute plain-text documents as automated functional tests

DISTNAME =	cucumber-0.3.96
REVISION =	10
CATEGORIES =	devel

HOMEPAGE =	https://cucumber.io/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-term-ansicolor,${MODRUBY_FLAVOR} \
		textproc/ruby-treetop,${MODRUBY_FLAVOR}>=1.3.0 \
		devel/ruby-diff-lcs,${MODRUBY_FLAVOR} \
		textproc/ruby-builder,${MODRUBY_FLAVOR}

CONFIGURE_STYLE=ruby gem

TEST_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH} \
		devel/ruby-hoe,${MODRUBY_FLAVOR}>=2.3.3

MODRUBY_TEST =	rake rspec

.include <bsd.port.mk>
