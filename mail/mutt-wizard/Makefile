# $OpenBSD $

COMMENT =	neomutt and isync configuration with good defaults
# commit date 20200906
DISTNAME =	mutt-wizard-20200906
CATEGORIES =	mail

GH_ACCOUNT =	LukeSmithxyz
GH_PROJECT =	mutt-wizard
GH_COMMIT =	95cf003c036dd95000ab80ca6c680dab2e3ca092

MAINTAINER =	Aisha Tammy <openbsd@aisha.cc>

# GPLv3
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	mail/neomutt \
		mail/isync \
		mail/msmtp \
		security/password-store

NO_BUILD =	Yes
NO_TEST =	Yes
USE_GMAKE =	Yes

FAKE_FLAGS =	PREFIX=${TRUEPREFIX} MANPREFIX=${PREFIX}/man

.include <bsd.port.mk>
