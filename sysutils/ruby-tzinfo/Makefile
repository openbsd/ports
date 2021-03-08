# $OpenBSD: Makefile,v 1.4 2021/03/08 20:44:48 sebastia Exp $

COMMENT=	access to time zone data and conversion

DISTNAME=	tzinfo-2.0.4

CATEGORIES=	sysutils
HOMEPAGE=	https://tzinfo.github.io/
MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS +=        ${RUN_DEPENDS}
RUN_DEPENDS +=		devel/ruby-concurrent-ruby,${MODRUBY_FLAVOR},>=1.0,<2

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
