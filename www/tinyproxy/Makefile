# $OpenBSD: Makefile,v 1.33 2020/06/12 12:35:51 sthen Exp $

COMMENT =		lightweight HTTP/SSL proxy

V =			1.10.0
DISTNAME =		tinyproxy-$V
CATEGORIES =		www net

HOMEPAGE =		https://tinyproxy.github.io/

# GPLv2+
PERMIT_PACKAGE =		Yes

WANTLIB =		c

BUILD_DEPENDS =		textproc/asciidoc>=8.6.8

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	autoconf
AUTOCONF_VERSION =	2.69

MASTER_SITES =		https://github.com/tinyproxy/tinyproxy/releases/download/$V/

FAKE_FLAGS=		sysconfdir=${PREFIX}/share/examples

.include <bsd.port.mk>
