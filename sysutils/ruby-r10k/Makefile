# $OpenBSD: Makefile,v 1.10 2016/12/20 10:40:53 sebastia Exp $

COMMENT =	Puppet module management

DISTNAME =	r10k-2.5.1
CATEGORIES =	sysutils
HOMEPAGE =	https://github.com/puppetlabs/r10k
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=	archivers/ruby-minitar,${MODRUBY_FLAVOR}>=0,<2 \
		converters/ruby-multi_json,${MODRUBY_FLAVOR}>=1.10,<2 \
		devel/ruby-colored,${MODRUBY_FLAVOR},=1.2 \
		devel/ruby-cri,${MODRUBY_FLAVOR}>=2.6.1,<2.7 \
		devel/ruby-gettext-setup,${MODRUBY_FLAVOR}>=0.5,<1 \
		devel/ruby-log4r,${MODRUBY_FLAVOR}=1.1.10 \
		devel/ruby-semantic_puppet,${MODRUBY_FLAVOR}>=0.1.0,<0.2 \
		devel/ruby-puppet_forge,${MODRUBY_FLAVOR}>=2.2,<3

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
