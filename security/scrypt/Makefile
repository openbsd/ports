# $OpenBSD: Makefile,v 1.4 2010/11/20 17:22:45 espie Exp $

COMMENT =	command-line encryption using scrypt key derivation function

DISTNAME =	scrypt-1.1.4

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

CONFIGURE_STYLE =	gnu
USE_GROFF =		Yes

NO_REGRESS =		Yes

.include <bsd.port.mk>
