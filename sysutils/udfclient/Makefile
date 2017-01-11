# $OpenBSD: Makefile,v 1.4 2017/01/11 13:44:33 jasper Exp $

COMMENT =	userland implementation of the UDF filesystem

V =		0.8.6
DISTNAME =	UDFclient.${V}
PKGNAME =	udfclient-${V}
REVISION =	0
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
