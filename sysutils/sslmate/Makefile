# $OpenBSD: Makefile,v 1.7 2015/09/24 01:05:02 jturner Exp $

COMMENT =		client for the sslmate.com online certificate service

DISTNAME =		sslmate-1.5.0
CATEGORIES =		sysutils

MAINTAINER =		James Turner <james@calminferno.net>

HOMEPAGE =		https://sslmate.com
MASTER_SITES =		https://packages.sslmate.com/other/

# MIT
PERMIT_PACKAGE_CDROM =	Yes

RUN_DEPENDS =		devel/p5-Term-ReadKey \
			www/p5-libwww \
			www/p5-LWP-Protocol-https

NO_CONFIGURE =		Yes
NO_BUILD =		Yes

FAKE_FLAGS =		PREFIX="${PREFIX}" \
			MANDIR="${PREFIX}/man"

NO_TEST =		Yes

.include <bsd.port.mk>
