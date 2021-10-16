# $OpenBSD: Makefile,v 1.6 2021/10/16 14:38:45 thfr Exp $

COMMENT =	neomutt and isync configuration with good defaults
CATEGORIES =	mail
DISTNAME =	mutt-wizard-3.2.1.20211006

GH_ACCOUNT =	LukeSmithxyz
GH_PROJECT =	mutt-wizard
GH_COMMIT =	85c5d01dcd09058094a8a180c38751e88416b1f4

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

post-patch:
	cd ${WRKSRC} && \
	sed -e "s/\<grep\>/ggrep/g" -i bin/mw

.include <bsd.port.mk>
