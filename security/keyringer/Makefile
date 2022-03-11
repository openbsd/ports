COMMENT =	manage and share secrets using GnuPG and Git

DISTNAME =	keyringer-0.5.6

CATEGORIES =	security

HOMEPAGE =	https://keyringer.pw/

MAINTAINER =	Gregoire Jadi <gjadi@omecha.info>

# GPLv3+
PERMIT_PACKAGE =	Yes

MASTER_SITES =		https://keyringer.pw/releases/
EXTRACT_SUFX =		.tar.bz2

RUN_DEPENDS =		devel/git \
			security/gnupg>=2.2.23p1 \
			shells/bash \
			converters/base64

MAKE_FLAGS =		PREFIX="${PREFIX}" \
			MANDIR="${PREFIX}/man"

NO_BUILD =		Yes
NO_TEST =		Yes

PKG_ARCH =		*

.include <bsd.port.mk>
