# $OpenBSD: Makefile,v 1.1.1.1 2022/02/09 09:57:14 landry Exp $

COMMENT =	data files for use with lebiniou

PKGNAME =	${DISTNAME:S/-version//}
DISTNAME =	lebiniou-data-${V}
V =		version-3.64.0

CATEGORIES =	multimedia

HOMEPAGE =	https://www.lebiniou.net/

# GPLv2+
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://gitlab.com/lebiniou/lebiniou-data/-/archive/${V}/

CONFIGURE_STYLE =	autoreconf
AUTOCONF_VERSION =	2.68
AUTOMAKE_VERSION =	1.11

PKG_ARCH =		*

.include <bsd.port.mk>
