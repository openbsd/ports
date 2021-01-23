# $OpenBSD: Makefile,v 1.3 2021/01/23 23:11:13 sthen Exp $

COMMENT =	neomutt and isync configuration with good defaults
CATEGORIES =	mail

GH_ACCOUNT =	LukeSmithxyz
GH_PROJECT =	mutt-wizard
GH_TAGNAME =	v3.1.1

EPOCH =		0

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
