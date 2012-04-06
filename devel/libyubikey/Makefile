# $OpenBSD: Makefile,v 1.1.1.1 2012/04/06 14:09:13 jasper Exp $

COMMENT=	Yubikey OTP library

DISTNAME=	libyubikey-1.8
CATEGORIES=	devel security

HOMEPAGE=	https://github.com/Yubico/yubico-c

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://distfiles.nl/

WANTLIB += c

BUILD_DEPENDS=	archivers/gtar

USE_GMAKE=	Yes
MAKE_FILE=	simple.mk

MAKE_FLAGS +=	CFLAGS="${CFLAGS} -I."

REGRESS_TARGET=	check

TAR=		${LOCALBASE}/bin/gtar
WRKDIST=	${WRKDIR}/Yubico-yubico-c-0072a42

do-install:
.for p in modhex ykgenerate ykparse
	${INSTALL_PROGRAM} ${WRKBUILD}/$p ${PREFIX}/bin/
.endfor

.include <bsd.port.mk>