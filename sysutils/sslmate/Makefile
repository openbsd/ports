COMMENT =		client for the sslmate.com online certificate service

DISTNAME =		sslmate-1.7.1
CATEGORIES =		sysutils

HOMEPAGE =		https://sslmate.com/
MASTER_SITES =		https://packages.sslmate.com/other/

# MIT
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =		www/p5-libwww \
			www/p5-LWP-Protocol-https

NO_CONFIGURE =		Yes
NO_BUILD =		Yes

FAKE_FLAGS =		PREFIX="${PREFIX}" \
			MANDIR="${PREFIX}/man"

NO_TEST =		Yes

.include <bsd.port.mk>
