# $OpenBSD: Makefile,v 1.4 2014/09/10 00:02:21 sthen Exp $

COMMENT=	secure RTP library

DISTNAME=	srtp-1.4.4
REVISION=	0
PKGNAME=	lib${DISTNAME}
CATEGORIES=	security telephony
EXTRACT_SUFX=	.tgz

MAINTAINER=	David Hill <dhill@openbsd.org>

HOMEPAGE=	http://srtp.sourceforge.net/srtp.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=srtp/}

WRKDIST=	${WRKDIR}/srtp

CONFIGURE_STYLE=	gnu
CFLAGS+=		-fPIC

USE_GMAKE=	Yes
TEST_TARGET=	runtest

.include <bsd.port.mk>
