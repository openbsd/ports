COMMENT =	help to find programs that need restarting after upgrade

V =		1.0
DISTNAME =	checkrestart-${V}
REVISION =	1

CATEGORIES =	sysutils
HOMEPAGE =	https://github.com/semarie/checkrestart

MAINTAINER =	Sebastien Marie <semarie@kapouay.eu.org>

# BSD
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/semarie/checkrestart/releases/download/${V}/

# use pledge()
WANTLIB =		c kvm>=16.2

MAKE_ENV =		BINDIR=${LOCALBASE}/sbin \
			MANDIR=${LOCALBASE}/man/man

NO_TEST =		Yes

.include <bsd.port.mk>
