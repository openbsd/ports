# $OpenBSD: Makefile,v 1.3 2001/06/15 02:08:39 kevlo Exp $

COMMENT=	"multi-platform cd player development library"
DISTNAME=	libcdaudio-0.99.4
CATEGORIES=	audio
NEED_VERSION=	1.364

HOMEPAGE=	http://cdcd.undergrid.net/libcdaudio/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= distributions/gentoo/gentoo-sources/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static


.include <bsd.port.mk>
