# $OpenBSD: Makefile,v 1.5 2010/11/08 23:28:53 jeremy Exp $

COMMENT =	execute plain-text documents as automated functional tests

DISTNAME =	cucumber-0.3.96
REVISION =	2
CATEGORIES =	devel

HOMEPAGE =

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		:${MODRUBY_PKG_PREFIX}-term-ansicolor-*:devel/ruby-term-ansicolor,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-treetop->=1.3.0:textproc/ruby-treetop,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-diff-lcs-*:devel/ruby-diff-lcs,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-builder-*:textproc/ruby-builder,${FLAVOR}

CONFIGURE_STYLE =	ruby gem

REGRESS_DEPENDS =	:${FULLPKGNAME}:${BUILD_PKGPATH} \
			:${MODRUBY_PKG_PREFIX}-hoe->=2.3.3:devel/ruby-hoe,${FLAVOR}

MODRUBY_REGRESS =	rake rspec

RAKE_REGRESS_TARGET =	features

.include <bsd.port.mk>
