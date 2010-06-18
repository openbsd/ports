# $OpenBSD: Makefile,v 1.2 2010/06/18 22:20:03 sebastia Exp $

COMMENT=	video capture library

DISTNAME=	libvidcap-0.2.1
PKGNAME=	${DISTNAME}p0
USE_LIBTOOL=	Yes
SHARED_LIBS=	vidcap	0.0
CATEGORIES=	graphics

HOMEPAGE=	http://libvidcap.sourceforge.net/
MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libvidcap/}

WANTLIB=	pthread m stdc++

SEPARATE_BUILD= simple
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
