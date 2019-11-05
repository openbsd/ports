# $OpenBSD: Makefile,v 1.2 2019/11/05 07:39:51 giovanni Exp $

COMMENT =	Apache SpamAssassin integration to the OpenSMTPD daemon

V =		0.4
FILTER_NAME =	spamassassin
DISTNAME =	filter-spamassassin-${V}
HOMEPAGE =	https://www.umaxx.net/

CATEGORIES =	mail

MAINTAINER =	Joerg Jung <jung@openbsd.org>, \
		Giovanni Bechis <giovanni@openbsd.org>

MASTER_SITES =	${HOMEPAGE}dl/

# ISC
PERMIT_PACKAGE =	Yes

WANTLIB =	c pthread
MODULES =	lang/go
NO_TEST =	Yes

ALL_TARGET =	filter-spamassassin

post-install:
	${INSTALL_MAN} ${WRKSRC}/filter-spamassassin.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
