# $OpenBSD: Makefile,v 1.2 2001/04/13 03:24:06 obecian Exp $

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

MASTER_SITES=	${HOMEPAGE}/source_archive/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static


.include <bsd.port.mk>
