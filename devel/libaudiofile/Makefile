# $OpenBSD: Makefile,v 1.21 2001/10/05 02:09:19 brad Exp $

COMMENT=	"SGI audiofile library GPLed clone"

DISTNAME=	audiofile-0.2.2
PKGNAME=	lib${DISTNAME}
CATEGORIES=	devel
NEED_VERSION=	1.460
MASTER_SITES=	ftp://oss.sgi.com/projects/audiofile/download/

HOMEPAGE=	http://oss.sgi.com/projects/audiofile/

MAINTAINER=	Brad Smith <brad@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu
CONFIGURE_ARGS+= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

PATCH_LIST=	${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltconfig \
		${PORTSDIR}/infrastructure/patches/patch-lt1.3.5-ltmain_sh

.include <bsd.port.mk>
