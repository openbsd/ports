# $OpenBSD: Makefile,v 1.2 2012/04/06 14:38:26 jasper Exp $

COMMENT=	Yubikey OTP library

DISTNAME=	libyubikey-1.8
REVISION=	0
CATEGORIES=	devel security

HOMEPAGE=	http://yubico-c.googlecode.com/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/files/

WANTLIB += c

USE_GMAKE=	Yes
MAKE_FILE=	simple.mk

MAKE_FLAGS +=	CFLAGS="${CFLAGS} -I."

REGRESS_TARGET=	check

do-install:
.for p in modhex ykgenerate ykparse
	${INSTALL_PROGRAM} ${WRKBUILD}/$p ${PREFIX}/bin/
.endfor

.include <bsd.port.mk>
