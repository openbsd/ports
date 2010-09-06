# $OpenBSD: Makefile,v 1.5 2010/09/06 00:04:28 sthen Exp $

COMMENT=	musepack StreamVersion7 encoder

DISTNAME=	mppenc-1.16
REVISION=	1
CATEGORIES=	audio

HOMEPAGE=	http://www.musepack.net/

# LGPL
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes

MASTER_SITES=	http://files2.musepack.net/source/
EXTRACT_SUFX=	.tar.bz2

WANTLIB=	c m ossaudio

MODULES=	devel/cmake

NO_REGRESS=	Yes

.include <bsd.port.mk>
