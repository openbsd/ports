COMMENT =	manage and share secrets using GnuPG and Git

DISTNAME =	keyringer-0.5.9
REVISION =	0

CATEGORIES =	security

HOMEPAGE =	https://0xacab.org/rhatto/keyringer

MAINTAINER =	Jeremie Courreges-Anglas <jca@wxcvbn.org>

# GPLv3+
PERMIT_PACKAGE =	Yes

SITES =			https://git.fluxo.info/keyringer/snapshot/
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
