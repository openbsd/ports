#  $OpenBSD: Makefile,v 1.14 2018/10/19 19:26:05 jasper Exp $

COMMENT =		rspec expectations and matchers
DISTNAME =		rspec-expectations-3.8.2

BUILD_DEPENDS = 	${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-diff-lcs,${MODRUBY_FLAVOR} \
			devel/ruby-rspec/3/support,${MODRUBY_FLAVOR}>=3.8.0

.include <bsd.port.mk>
