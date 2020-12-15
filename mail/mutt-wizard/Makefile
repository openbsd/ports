# $OpenBSD: Makefile,v 1.2 2020/12/15 16:54:48 sthen Exp $

COMMENT =	neomutt and isync configuration with good defaults
# commit date 20201210
DISTNAME =	mutt-wizard-20201210
CATEGORIES =	mail

GH_ACCOUNT =	LukeSmithxyz
GH_PROJECT =	mutt-wizard
GH_COMMIT =	456d02d1ee0ab196ac256b91c9ac86a01f3c0bb6

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
