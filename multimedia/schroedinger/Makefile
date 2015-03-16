# $OpenBSD: Makefile,v 1.13 2015/03/16 18:07:51 naddy Exp $

COMMENT=	high-speed Dirac codec

DISTNAME=	schroedinger-1.0.11
REVISION=	1
CATEGORIES=	multimedia
MASTER_SITES=	${HOMEPAGE}/download/schroedinger/

SHARED_LIBS=	schroedinger-1.0	3.0

HOMEPAGE=	http://diracvideo.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	m orc-0.4>=4.0 pthread stdc++

LIB_DEPENDS=	devel/orc>=0.4.16p0

CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.68

.include <bsd.port.mk>
