# $OpenBSD: Makefile,v 1.6 2017/04/05 19:45:44 juanfra Exp $

COMMENT =	userland implementation of the UDF filesystem

V =		0.8.8
DISTNAME =	UDFclient.${V}
PKGNAME =	udfclient-${V}
CATEGORIES =	sysutils

HOMEPAGE =	http://www.13thmonkey.org/udfclient/

MAINTAINER =	Josh Grosse <josh@jggimi.net>

# Clarified Artistic License
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c pthread

MASTER_SITES =	http://www.13thmonkey.org/udfclient/releases/
EXTRACT_SUFX =	.tgz

CONFIGURE_STYLE =	gnu

NO_TEST =	Yes

.include <bsd.port.mk>
