# $OpenBSD: Makefile,v 1.3 2019/07/12 20:49:40 sthen Exp $
#

COMMENT =	help to find programs that need restarting after upgrade

V =		1.0
DISTNAME =	checkrestart-${V}
REVISION =	0

CATEGORIES =	sysutils
HOMEPAGE =	https://github.com/semarie/checkrestart

MAINTAINER =	Sebastien Marie <semarie@online.fr>

# BSD
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/semarie/checkrestart/releases/download/${V}/

# use pledge()
WANTLIB =		c kvm>=16.2

MAKE_ENV =		BINDIR=${LOCALBASE}/sbin \
			MANDIR=${LOCALBASE}/man/man

CONFIGURE_STYLE =	none

NO_TEST =		Yes

.include <bsd.port.mk>
