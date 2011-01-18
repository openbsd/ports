# $OpenBSD: Makefile,v 1.7 2011/01/18 11:37:40 landry Exp $

COMMENT=	high-speed Dirac codec

DISTNAME=	schroedinger-1.0.10
CATEGORIES=	multimedia
MASTER_SITES=	${HOMEPAGE}/download/schroedinger/

SHARED_LIBS=	schroedinger-1.0	2.0

HOMEPAGE=	http://diracvideo.org/

MAINTAINER=	Brad Smith <brad@comstyle.com>

# MIT
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=	m orc-0.4>=2.0 stdc++

LIB_DEPENDS=	orc->=0.4.11:devel/orc

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= autoconf
# Should be 2.65
AUTOCONF_VERSION= 2.64

.include <bsd.port.mk>
