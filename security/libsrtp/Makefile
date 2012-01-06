# $OpenBSD: Makefile,v 1.2 2012/01/06 00:45:06 sthen Exp $

COMMENT=	Secure RTP library

DISTNAME=	srtp-1.4.4
PKGNAME=	lib${DISTNAME}
CATEGORIES=	security
EXTRACT_SUFX=	.tgz

MAINTAINER=	David Hill <dhill@openbsd.org>

HOMEPAGE=	http://srtp.sourceforge.net/srtp.html

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=srtp/}

WRKDIST=	${WRKDIR}/srtp

CONFIGURE_STYLE=	gnu
CFLAGS+=		-fPIC

USE_GMAKE=	Yes
REGRESS_TARGET=	runtest

.include <bsd.port.mk>
