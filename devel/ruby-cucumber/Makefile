# $OpenBSD: Makefile,v 1.10 2011/11/17 16:08:00 jeremy Exp $

COMMENT =	execute plain-text documents as automated functional tests

DISTNAME =	cucumber-0.3.96
REVISION =	5
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

.include <bsd.port.mk>
