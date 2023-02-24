COMMENT =	neomutt and isync configuration with good defaults
CATEGORIES =	mail

GH_ACCOUNT =	LukeSmithxyz
GH_PROJECT =	mutt-wizard
GH_TAGNAME =	v3.3.1

EPOCH =		0
REVISION =	0

MAINTAINER =	Aisha Tammy <aisha@openbsd.org>

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
