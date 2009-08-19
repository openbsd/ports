# $OpenBSD: Makefile,v 1.1.1.1 2009/08/19 07:06:55 msf Exp $

COMMENT =	execute plain-text documents as automated functional tests

V =		0.3.96
DISTNAME =	aslakhellesoy-cucumber-$V
PKGNAME =	ruby-cucumber-$V
CATEGORIES =	devel

HOMEPAGE =

# MIT
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =		${MASTER_SITE_GITHUB}

MODULES =		lang/ruby

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		::devel/ruby-term-ansicolor \
			:ruby-treetop->=1.3.0:textproc/ruby-treetop \
			::devel/ruby-diff-lcs \
			::textproc/ruby-builder

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =		*

REGRESS_DEPENDS =	:ruby-cucumber->=${V}:devel/ruby-cucumber \
			:ruby-hoe->=2.3.3:devel/ruby-hoe

MODRUBY_REGRESS =	rake rspec

RAKE_REGRESS_TARGET =	features

.include <bsd.port.mk>
