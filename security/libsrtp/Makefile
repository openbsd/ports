# $OpenBSD: Makefile,v 1.5 2014/10/22 09:44:07 jasper Exp $

COMMENT=	secure RTP library

DISTNAME=	srtp-1.4.4
REVISION=	1
PKGNAME=	lib${DISTNAME}
CATEGORIES=	security telephony
EXTRACT_SUFX=	.tgz

MAINTAINER=	David Hill <dhill@mindcry.org>

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
