# $OpenBSD: Makefile,v 1.6 2002/03/24 23:18:55 brad Exp $

COMMENT=	"multi-platform cd player development library"
DISTNAME=	libcdaudio-0.99.6
CATEGORIES=	audio
NEED_VERSION=	1.500

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

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig \
		patch-*

# Workaround compiler bug with cddb.c, otherwise we get a sig11
.if ${MACHINE_ARCH} == "powerpc"
PATCH_LIST+=	sup-powerpc
.endif

.include <bsd.port.mk>
