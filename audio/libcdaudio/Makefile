# $OpenBSD: Makefile,v 1.4 2001/10/30 07:58:24 kevlo Exp $

COMMENT=	"multi-platform cd player development library"
DISTNAME=	libcdaudio-0.99.6
CATEGORIES=	audio
NEED_VERSION=	1.488

HOMEPAGE=	http://libcdaudio.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE} 
MASTER_SITE_SUBDIR=	libcdaudio

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig

.include <bsd.port.mk>
