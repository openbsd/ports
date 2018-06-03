# $OpenBSD: Makefile,v 1.3 2018/06/03 15:39:24 jca Exp $

COMMENT =	manage and share secrets using GnuPG and Git

DISTNAME =	keyringer-0.5.3
REVISION =	0

CATEGORIES =	security

HOMEPAGE =	https://keyringer.pw/

MAINTAINER =	Gregoire Jadi <gjadi@omecha.info>

# GPLv3+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		https://keyringer.pw/releases/
EXTRACT_SUFX =		.tar.bz2

RUN_DEPENDS =		devel/git \
			security/gnupg2 \
			shells/bash \
			converters/base64

MAKE_FLAGS =		PREFIX="${PREFIX}" \
			MANDIR="${PREFIX}/man"

NO_BUILD =		Yes
NO_TEST =		Yes

.include <bsd.port.mk>
