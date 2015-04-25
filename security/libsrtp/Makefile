# $OpenBSD: Makefile,v 1.6 2015/04/25 23:40:48 sthen Exp $

COMMENT=	secure RTP library

V=		1.5.2
DISTNAME=	srtp-$V
DISTFILES=	${DISTNAME}{v$V}${EXTRACT_SUFX}
PKGNAME=	lib${DISTNAME}
CATEGORIES=	security telephony

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

HOMEPAGE=	http://srtp.sourceforge.net/srtp.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	https://github.com/cisco/libsrtp/archive/

WRKDIST=	${WRKDIR}/${PKGNAME}

CONFIGURE_STYLE=	gnu
CFLAGS+=		-fPIC

USE_GMAKE=	Yes
TEST_TARGET=	runtest

.include <bsd.port.mk>
