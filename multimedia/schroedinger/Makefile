# $OpenBSD: Makefile,v 1.11 2013/03/11 11:35:44 espie Exp $

COMMENT=	high-speed Dirac codec

DISTNAME=	schroedinger-1.0.11
REVISION=	0
CATEGORIES=	multimedia
MASTER_SITES=	${HOMEPAGE}/download/schroedinger/

SHARED_LIBS=	schroedinger-1.0	3.0

HOMEPAGE=	http://diracvideo.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# MIT
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=	m orc-0.4>=4.0 pthread stdc++

LIB_DEPENDS=	devel/orc>=0.4.16p0

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.68

.include <bsd.port.mk>
