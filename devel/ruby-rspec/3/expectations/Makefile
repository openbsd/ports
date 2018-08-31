#  $OpenBSD: Makefile,v 1.13 2018/08/31 19:06:32 jasper Exp $

COMMENT =		rspec expectations and matchers
DISTNAME =		rspec-expectations-3.8.1

BUILD_DEPENDS = 	${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-diff-lcs,${MODRUBY_FLAVOR} \
			devel/ruby-rspec/3/support,${MODRUBY_FLAVOR}>=3.8.0

.include <bsd.port.mk>
