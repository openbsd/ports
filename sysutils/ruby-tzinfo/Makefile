# $OpenBSD: Makefile,v 1.2 2019/07/12 20:49:51 sthen Exp $

COMMENT=	access to time zone data and conversion

DISTNAME=	tzinfo-1.2.5

CATEGORIES=	sysutils
HOMEPAGE=	https://tzinfo.github.io/
MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS +=        ${RUN_DEPENDS}
RUN_DEPENDS +=		devel/ruby-thread_safe,${MODRUBY_FLAVOR},>=0,<1

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
