# $OpenBSD: Makefile,v 1.6 2010/11/15 19:46:08 espie Exp $

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
RUN_DEPENDS =		devel/ruby-term-ansicolor,${FLAVOR} \
			STEM->=1.3.0:textproc/ruby-treetop,${FLAVOR} \
			devel/ruby-diff-lcs,${FLAVOR} \
			textproc/ruby-builder,${FLAVOR}

CONFIGURE_STYLE =	ruby gem

REGRESS_DEPENDS =	${FULLPKGNAME}:${BUILD_PKGPATH} \
			STEM->=2.3.3:devel/ruby-hoe,${FLAVOR}

MODRUBY_REGRESS =	rake rspec

RAKE_REGRESS_TARGET =	features

.include <bsd.port.mk>
