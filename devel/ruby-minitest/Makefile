# $OpenBSD: Makefile,v 1.20 2021/09/04 06:16:35 ajacoutot Exp $

COMMENT =	small and fast replacement for test/unit

DISTNAME =	minitest-5.11.3
REVISION =	1
CATEGORIES =	devel

# MIT
PERMIT_PACKAGE =	Yes

MODULES =	lang/ruby

CONFIGURE_STYLE = ruby gem

MODRUBY_TEST = rake

TEST_DEPENDS = devel/ruby-hoe,${MODRUBY_FLAVOR}

.include <bsd.port.mk>

.if ${FLAVOR:L:Mruby26}
# Ruby 2.6 includes this version of minitest
PLIST =		${PKGDIR}/PLIST.empty
.endif
