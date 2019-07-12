# $OpenBSD: Makefile,v 1.18 2019/07/12 20:45:59 sthen Exp $

COMMENT =	small and fast replacement for test/unit

DISTNAME =	minitest-5.11.3
REVISION =	0
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

MODRUBY_TEST = rake

.if !defined(FLAVOR) || ${FLAVOR:L:Mruby26}
# Ruby 2.6 includes this version of minitest
PLIST =		${PKGDIR}/PLIST.empty
.endif

TEST_DEPENDS = devel/ruby-hoe,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
