# $OpenBSD: Makefile,v 1.12 2006/10/28 10:30:41 espie Exp $

COMMENT=	"multi-platform cd player development library"
DISTNAME=	libcdaudio-0.99.6
PKGNAME=	${DISTNAME}p0
SHARED_LIBS +=	cdaudio              1.0      # .1.0
CATEGORIES=	audio

HOMEPAGE=	http://libcdaudio.sourceforge.net/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=libcdaudio/}

USE_LIBTOOL=	Yes
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}

# Workaround compiler bug with cddb.c, otherwise we get a sig11
.if ${MACHINE_ARCH} == "powerpc"
PATCH_LIST+=	sup-powerpc
.endif

.include <bsd.port.mk>
