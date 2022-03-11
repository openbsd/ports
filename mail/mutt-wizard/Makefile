COMMENT =	neomutt and isync configuration with good defaults
CATEGORIES =	mail
DISTNAME =	mutt-wizard-3.2.1.20220121

GH_ACCOUNT =	LukeSmithxyz
GH_PROJECT =	mutt-wizard
GH_COMMIT =	29b7b59ffd1b0dfad10c74b5daa6ff67954261b9

EPOCH =		0

MAINTAINER =	Aisha Tammy <openbsd@aisha.cc>

# GPLv3
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	mail/neomutt,gpgme,sasl,notmuch \
		mail/isync \
		mail/msmtp \
		security/password-store \
		sysutils/ggrep

NO_BUILD =	Yes
NO_TEST =	Yes
USE_GMAKE =	Yes

FAKE_FLAGS =	PREFIX=${TRUEPREFIX} MANPREFIX=${PREFIX}/man

post-extract:
	cd ${WRKSRC} && \
	sed -e "s/\<grep\>/ggrep/g" -i bin/mw

.include <bsd.port.mk>
