# $OpenBSD: Makefile,v 1.3 2015/07/01 09:00:38 sebastia Exp $

COMMENT =	Puppet module management

DISTNAME =	r10k-2.0.2
CATEGORIES =	sysutils
HOMEPAGE =	https://github.com/adrienthebo/r10k
MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby
BUILD_DEPENDS +=	${RUN_DEPENDS}
RUN_DEPENDS +=	archivers/ruby-minitar,${MODRUBY_FLAVOR}>=0,<2 \
		converters/ruby-multi_json,${MODRUBY_FLAVOR}>=1.10,<2 \
		devel/ruby-colored,${MODRUBY_FLAVOR},=1.2 \
		devel/ruby-cri,${MODRUBY_FLAVOR}>=2.6.1,<2.7 \
		devel/ruby-json_pure,${MODRUBY_FLAVOR}>=1.8.2 \
		devel/ruby-log4r,${MODRUBY_FLAVOR}=1.1.10 \
		devel/ruby-semantic_puppet,${MODRUBY_FLAVOR}>=0.1.0,<0.2 \
		www/ruby-faraday,${MODRUBY_FLAVOR}>=0.9.0,<0.10 \
		www/ruby-faraday_middleware,${MODRUBY_FLAVOR}>=0.9.0,<0.10 \
		www/ruby-faraday_middleware-multi_json,${MODRUBY_FLAVOR}>=0.0.6,<0.1.0

CONFIGURE_STYLE =	ruby gem

.include <bsd.port.mk>
