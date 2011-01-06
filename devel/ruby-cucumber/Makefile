# $OpenBSD: Makefile,v 1.8 2011/01/06 04:24:23 jeremy Exp $

COMMENT =	execute plain-text documents as automated functional tests

DISTNAME =	cucumber-0.3.96
REVISION =	4
CATEGORIES =	devel

HOMEPAGE =

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-term-ansicolor,${MODRUBY_FLAVOR} \
			textproc/ruby-treetop,${MODRUBY_FLAVOR}>=1.3.0 \
			devel/ruby-diff-lcs,${MODRUBY_FLAVOR} \
			textproc/ruby-builder,${MODRUBY_FLAVOR}

CONFIGURE_STYLE =	ruby gem

REGRESS_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH} \
			devel/ruby-hoe,${MODRUBY_FLAVOR}>=2.3.3

MODRUBY_REGRESS =	rake rspec

RAKE_REGRESS_TARGET =	features

.include <bsd.port.mk>
