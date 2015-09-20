# $OpenBSD: Makefile,v 1.7 2015/09/20 08:04:15 benoit Exp $

COMMENT =	command-line encryption using scrypt key derivation function

DISTNAME =	scrypt-1.2.0

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
