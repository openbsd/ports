# $OpenBSD: Makefile,v 1.22 2001/12/16 02:28:30 brad Exp $

COMMENT=	"SGI audiofile library clone"

DISTNAME=	audiofile-0.2.3
PKGNAME=	lib${DISTNAME}
CATEGORIES=	devel
NEED_VERSION=	1.500
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

.include <bsd.port.mk>
