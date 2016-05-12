# $OpenBSD: Makefile,v 1.9 2016/05/12 14:00:13 espie Exp $

COMMENT =		client for the sslmate.com online certificate service

DISTNAME =		sslmate-1.5.1
CATEGORIES =		sysutils
REVISION =		0

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		https://sslmate.com
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
