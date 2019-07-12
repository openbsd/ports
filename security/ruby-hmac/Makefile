# $OpenBSD: Makefile,v 1.3 2019/07/12 21:02:25 sthen Exp $

COMMENT =		common interface to HMAC functionality

DISTNAME =		ruby-hmac-0.4.0
PKGNAME =		${DISTNAME:S/ruby-//}
REVISION =		0
CATEGORIES =		security

# MIT
PERMIT_PACKAGE = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST=	rake

.include <bsd.port.mk>
