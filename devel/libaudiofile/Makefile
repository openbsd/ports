# $OpenBSD: Makefile,v 1.18 2001/03/03 16:34:36 brad Exp $

DISTNAME=	audiofile-0.2.1
PKGNAME=	lib${DISTNAME}
CATEGORIES=	devel
NEED_VERSION=	1.336
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
