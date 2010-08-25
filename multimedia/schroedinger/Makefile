# $OpenBSD: Makefile,v 1.4 2010/08/25 23:25:36 sthen Exp $

COMMENT=	high-speed Dirac codec

DISTNAME=	schroedinger-1.0.9
CATEGORIES=	multimedia
MASTER_SITES=	${HOMEPAGE}download/schroedinger/

SHARED_LIBS=	schroedinger-1.0	1.0

HOMEPAGE=	http://diracvideo.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	m orc-0.4.>=2.0 stdc++

LIB_DEPENDS=	::devel/orc

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= autoconf
AUTOCONF_VERSION= 2.64

.include <bsd.port.mk>
