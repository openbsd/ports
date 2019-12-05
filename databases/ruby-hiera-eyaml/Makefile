# $OpenBSD: Makefile,v 1.12 2019/12/05 07:44:10 sebastia Exp $

COMMENT =	Hiera backend for decrypting encrypted yaml properties

REVISION =	0
DISTNAME =	hiera-eyaml-3.1.1
CATEGORIES =	databases

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		databases/ruby-hiera3,${MODRUBY_FLAVOR} \
			devel/ruby-highline,${MODRUBY_FLAVOR}<1.7 \
			devel/ruby-optimist,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
