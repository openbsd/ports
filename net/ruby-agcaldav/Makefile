# $OpenBSD: Makefile,v 1.4 2019/07/12 20:48:47 sthen Exp $

COMMENT=		Ruby client for CalDAV calendars

DISTNAME=		agcaldav-0.2.5.3
REVISION=		1
CATEGORIES=		net

HOMEPAGE=		https://github.com/agilastic/agcaldav

# MIT
PERMIT_PACKAGE=	Yes

MODULES=		lang/ruby

CONFIGURE_STYLE=	gem

BUILD_DEPENDS=		${RUN_DEPENDS}
RUN_DEPENDS=		devel/ruby-uuid,${MODRUBY_FLAVOR} \
			net/ruby-net-http-digest_auth,${MODRUBY_FLAVOR} \
			textproc/ruby-builder,${MODRUBY_FLAVOR} \
			textproc/ruby-icalendar,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
