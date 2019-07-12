# $OpenBSD: Makefile,v 1.9 2019/07/12 20:49:53 sthen Exp $

COMMENT =	userland implementation of the UDF filesystem

V =		0.8.9
DISTNAME =	UDFclient.${V}
PKGNAME =	udfclient-${V}
CATEGORIES =	sysutils

HOMEPAGE =	http://www.13thmonkey.org/udfclient/

MAINTAINER =	Josh Grosse <josh@jggimi.net>

# Clarified Artistic License
PERMIT_PACKAGE =	Yes

WANTLIB =	c pthread

MASTER_SITES =	http://www.13thmonkey.org/udfclient/releases/
EXTRACT_SUFX =	.tgz

CONFIGURE_STYLE =	gnu

NO_TEST =	Yes

.include <bsd.port.mk>
