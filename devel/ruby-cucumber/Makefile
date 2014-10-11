# $OpenBSD: Makefile,v 1.15 2014/10/11 19:54:46 jeremy Exp $

COMMENT =	execute plain-text documents as automated functional tests

DISTNAME =	cucumber-0.3.96
REVISION =	9
CATEGORIES =	devel

HOMEPAGE =	http://cukes.info/

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
