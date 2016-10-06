# $OpenBSD: Makefile,v 1.1.1.1 2016/10/06 16:32:30 landry Exp $
#

COMMENT =	help to find programs that need restarting after upgrade

GH_ACCOUNT =	semarie
GH_PROJECT =	checkrestart
GH_TAGNAME =	1.0

CATEGORIES =	sysutils
HOMEPAGE =	https://github.com/semarie/checkrestart

MAINTAINER =	Sebastien Marie <semarie@online.fr>

# BSD
PERMIT_PACKAGE_CDROM =	Yes

# use pledge()
WANTLIB =		c kvm>=16.2

MAKE_ENV =		BINDIR=${LOCALBASE}/sbin \
			MANDIR=${LOCALBASE}/man/man

CONFIGURE_STYLE =	none

NO_TEST =		Yes

.include <bsd.port.mk>
