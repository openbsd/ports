# $OpenBSD: Makefile,v 1.8 2017/04/30 14:26:13 benoit Exp $

COMMENT =	command-line encryption using scrypt key derivation function

DISTNAME =	scrypt-1.2.1

CATEGORIES =	security

HOMEPAGE =	http://www.tarsnap.com/scrypt/

# BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =	c crypto

MASTER_SITES =	${HOMEPAGE}
EXTRACT_SUFX =	.tgz

CONFIGURE_STYLE =	gnu

NO_TEST =		Yes

.include <bsd.port.mk>
