# $OpenBSD: Makefile,v 1.10 2010/11/09 18:22:26 espie Exp $

COMMENT=	dump frames from mpeg-1 movies

VERSION=	0.6
DISTNAME=	dumpmpeg-${VERSION}
REVISION =	0
CATEGORIES=	graphics x11

HOMEPAGE=	http://sourceforge.net/projects/dumpmpeg/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes


MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dumpmpeg/}

LIB_DEPENDS =	:smpeg-*:devel/smpeg
WANTLIB =	SDL X11 Xext c m pthread pthread-stubs usbhid xcb smpeg.>=1.3

USE_GROFF =	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
