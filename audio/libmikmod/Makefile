# $OpenBSD: Makefile,v 1.10 2006/01/07 22:35:17 brad Exp $

COMMENT=	"mikmod sound library"

VERSION=	3.1.10
DISTNAME=	libmikmod-${VERSION}
PKGNAME=	${DISTNAME}p4
SHARED_LIBS=	mikmod	2.4
CATEGORIES=    	audio devel

HOMEPAGE=	http://mikmod.raphnet.net/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}/files/libmikmod/ \
		${MASTER_SITE_SUNSITE:=apps/sound/libs/}

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
USE_LIBTOOL=	Yes
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --disable-dl \
		 --enable-oss

FLAVORS=	esd
FLAVOR?=

.if ${FLAVOR:L:Mesd}
CONFIGURE_ARGS+= --enable-esd
LIB_DEPENDS+=	esd.2::audio/esound
WANTLIB+=	audiofile m
.else
CONFIGURE_ARGS+= --disable-esd
.endif

.include <bsd.port.mk>
