# $OpenBSD: Makefile,v 1.21 2019/06/25 07:52:39 sebastia Exp $

COMMENT =	Puppet module management

DISTNAME =	r10k-3.3.0
CATEGORIES =	sysutils
HOMEPAGE =	https://github.com/puppetlabs/r10k
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

GEM_FLAGS =		--no-format-executable

BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS += converters/ruby-multi_json,${MODRUBY_FLAVOR}>=1.10,<2 \
		devel/ruby-colored,${MODRUBY_FLAVOR}=1.2 \
		devel/ruby-cri,${MODRUBY_FLAVOR}=2.15.6 \
		devel/ruby-gettext-setup,${MODRUBY_FLAVOR}>=0.24,<1 \
		devel/ruby-log4r,${MODRUBY_FLAVOR}=1.1.10 \
		devel/ruby-puppet_forge,${MODRUBY_FLAVOR}>=2.2.8,<3

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
