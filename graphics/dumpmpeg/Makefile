# $OpenBSD: Makefile,v 1.7 2009/08/10 06:31:44 kili Exp $

COMMENT=	dump frames from mpeg-1 movies

VERSION=	0.6
DISTNAME=	dumpmpeg-${VERSION}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	graphics x11

HOMEPAGE=	http://sourceforge.net/projects/dumpmpeg/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes
WANTLIB=		SDL X11 Xext c m pthread pthread-stubs usbhid xcb

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dumpmpeg/}

LIB_DEPENDS=	smpeg.>=1.3:smpeg-*:devel/smpeg

USE_X11=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
