# $OpenBSD: Makefile,v 1.3 2015/04/21 06:39:31 sebastia Exp $

COMMENT =	Hiera backend for decrypting encrypted yaml properties

DISTNAME =	hiera-eyaml-2.0.8
CATEGORIES =	databases

MAINTAINER =	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		databases/ruby-hiera,${MODRUBY_FLAVOR} \
			devel/ruby-highline,${MODRUBY_FLAVOR} \
			devel/ruby-trollop,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
