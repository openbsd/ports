# $OpenBSD: Makefile,v 1.11 2020/09/08 15:07:48 sthen Exp $

COMMENT =	userland implementation of the UDF filesystem

V =		0.8.11
REVISION=	0
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
