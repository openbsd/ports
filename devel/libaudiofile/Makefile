# $OpenBSD: Makefile,v 1.19 2001/04/18 01:49:50 brad Exp $

COMMENT=	"SGI audiofile library GPLed clone"

DISTNAME=	audiofile-0.2.1
PKGNAME=	lib${DISTNAME}
CATEGORIES=	devel
NEED_VERSION=	1.384
MASTER_SITES=	ftp://ftp.68k.org/pub/michael/ \
		${MASTER_SITE_GNOME}
MASTER_SITE_SUBDIR= stable/sources/audiofile

HOMEPAGE=	http://www.68k.org./~michael/audiofile/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

.include <bsd.port.mk>
