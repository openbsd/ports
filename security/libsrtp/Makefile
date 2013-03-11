# $OpenBSD: Makefile,v 1.3 2013/03/11 11:41:25 espie Exp $

COMMENT=	Secure RTP library

DISTNAME=	srtp-1.4.4
PKGNAME=	lib${DISTNAME}
CATEGORIES=	security
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
