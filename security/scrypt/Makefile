# $OpenBSD: Makefile,v 1.1.1.1 2009/05/25 22:48:48 sthen Exp $

COMMENT =	command-line encryption using scrypt key derivation function

DISTNAME =	scrypt-1.1.3

CATEGORIES =	security

HOMEPAGE =	http://www.tarsnap.com/scrypt/

# BSD
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

WANTLIB =	c crypto

MASTER_SITES =	${HOMEPAGE}
EXTRACT_SUFX =	.tgz

SEPARATE_BUILD =	concurrent
CONFIGURE_STYLE =	gnu

NO_REGRESS =		Yes

.include <bsd.port.mk>
