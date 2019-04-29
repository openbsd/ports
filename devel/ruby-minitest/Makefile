# $OpenBSD: Makefile,v 1.17 2019/04/29 00:39:03 jeremy Exp $

COMMENT =	small and fast replacement for test/unit

DISTNAME =	minitest-5.11.3
REVISION =	0
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

MODRUBY_TEST = rake

.if !defined(FLAVOR) || ${FLAVOR:L:Mruby26}
# Ruby 2.6 includes this version of minitest
PLIST =		${PKGDIR}/PLIST.empty
.endif

TEST_DEPENDS = devel/ruby-hoe,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
