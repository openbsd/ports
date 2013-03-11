# $OpenBSD: Makefile,v 1.5 2013/03/11 11:10:54 espie Exp $

COMMENT=	video capture library

DISTNAME=	libvidcap-0.2.1
REVISION =	0
USE_LIBTOOL=	Yes
SHARED_LIBS=	vidcap	0.0
CATEGORIES=	graphics

HOMEPAGE=	http://libvidcap.sourceforge.net/
MAINTAINER=	Sebastian Reitenbach <sebastia@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=libvidcap/}

WANTLIB=	pthread m stdc++

SEPARATE_BUILD= Yes
CONFIGURE_STYLE=gnu

.include <bsd.port.mk>
