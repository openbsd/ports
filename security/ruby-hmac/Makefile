# $OpenBSD: Makefile,v 1.2 2013/10/26 23:55:37 jeremy Exp $

COMMENT =		common interface to HMAC functionality

DISTNAME =		ruby-hmac-0.4.0
PKGNAME =		${DISTNAME:S/ruby-//}
REVISION =		0
CATEGORIES =		security

# MIT
PERMIT_PACKAGE_CDROM = Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

MODRUBY_TEST=	rake

.include <bsd.port.mk>
