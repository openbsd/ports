# $OpenBSD: Makefile,v 1.1.1.1 2016/05/01 17:28:32 jca Exp $

COMMENT =	userland implementation of the UDF filesystem

V =		0.8.5
DISTNAME =	UDFclient.${V}
PKGNAME =	udfclient-${V}
CATEGORIES =	sysutils

HOMEPAGE =	http://www.13thmonkey.org/udfclient/

MAINTAINER =	Josh Grosse <josh@jggimi.homeip.net>

# Clarified Artistic License
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c pthread

MASTER_SITES =	http://www.13thmonkey.org/udfclient/releases/
EXTRACT_SUFX =	.tgz

CONFIGURE_STYLE =	gnu

.include <bsd.port.mk>
