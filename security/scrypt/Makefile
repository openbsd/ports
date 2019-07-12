# $OpenBSD: Makefile,v 1.9 2019/07/12 20:49:36 sthen Exp $

COMMENT =	command-line encryption using scrypt key derivation function

DISTNAME =	scrypt-1.2.1

CATEGORIES =	security

HOMEPAGE =	http://www.tarsnap.com/scrypt/

# BSD
PERMIT_PACKAGE =	Yes

WANTLIB =	c crypto

MASTER_SITES =	${HOMEPAGE}
EXTRACT_SUFX =	.tgz

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

.include <bsd.port.mk>
