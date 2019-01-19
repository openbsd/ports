# $OpenBSD: Makefile,v 1.11 2019/01/19 15:04:06 sthen Exp $

COMMENT =		client for the sslmate.com online certificate service

DISTNAME =		sslmate-1.7.0
CATEGORIES =		sysutils

HOMEPAGE =		https://sslmate.com/
MASTER_SITES =		https://packages.sslmate.com/other/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		www/p5-libwww \
			www/p5-LWP-Protocol-https

NO_CONFIGURE =		Yes
NO_BUILD =		Yes

FAKE_FLAGS =		PREFIX="${PREFIX}" \
			MANDIR="${PREFIX}/man"

NO_TEST =		Yes

.include <bsd.port.mk>
