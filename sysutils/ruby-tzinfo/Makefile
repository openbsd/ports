# $OpenBSD: Makefile,v 1.1.1.1 2019/04/23 11:26:49 sebastia Exp $

COMMENT=	access to time zone data and conversion

DISTNAME=	tzinfo-1.2.5

CATEGORIES=	sysutils
HOMEPAGE=	https://tzinfo.github.io/
MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

MODULES=	lang/ruby

BUILD_DEPENDS +=        ${RUN_DEPENDS}
RUN_DEPENDS +=		devel/ruby-thread_safe,${MODRUBY_FLAVOR},>=0,<1

CONFIGURE_STYLE=ruby gem

.include <bsd.port.mk>
