COMMENT =	OTP extension for password-store

V =		1.2.0
DISTNAME =	pass-otp-${V}

CATEGORIES =	security

HOMEPAGE =	https://github.com/tadfisher/pass-otp

# GPLv3+
PERMIT_PACKAGE =	Yes

MASTER_SITES =	https://github.com/tadfisher/pass-otp/releases/download/v${V}/

BUILD_DEPENDS =	shells/bash
RUN_DEPENDS =	security/password-store \
		security/oath-toolkit \
		shells/bash \
		graphics/libqrencode

TEST_DEPENDS =	${RUN_DEPENDS} \
		lang/expect

MAKE_FLAGS =	SHELL=${LOCALBASE}/bin/bash
FAKE_FLAGS =	PREFIX=${PREFIX} \
		MANDIR=${PREFIX}/man \
		BASHCOMPDIR=${PREFIX}/share/bash-completion/completions

USE_GMAKE =	Yes

NO_BUILD =	Yes

.include <bsd.port.mk>
