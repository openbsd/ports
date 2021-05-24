# $OpenBSD: Makefile,v 1.4 2021/05/24 13:22:16 kmos Exp $

COMMENT =	neomutt and isync configuration with good defaults
CATEGORIES =	mail
DISTNAME =	mutt-wizard-3.2.1p20210504

GH_ACCOUNT =	LukeSmithxyz
GH_PROJECT =	mutt-wizard
GH_COMMIT =	80aee073122c63d1b570dc32e4490909ff15753b

EPOCH =		0

MAINTAINER =	Aisha Tammy <openbsd@aisha.cc>

# GPLv3
PERMIT_PACKAGE =	Yes

RUN_DEPENDS =	mail/neomutt,gpgme,sasl,notmuch \
		mail/isync \
		mail/msmtp \
		security/password-store \
		sysutils/coreutils

NO_BUILD =	Yes
NO_TEST =	Yes
USE_GMAKE =	Yes

FAKE_FLAGS =	PREFIX=${TRUEPREFIX} MANPREFIX=${PREFIX}/man

.include <bsd.port.mk>
