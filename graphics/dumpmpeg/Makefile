# $OpenBSD: Makefile,v 1.12 2011/11/01 20:30:49 jasper Exp $

COMMENT=	dump frames from mpeg-1 movies

VERSION=	0.6
DISTNAME=	dumpmpeg-${VERSION}
REVISION =	1
CATEGORIES=	graphics x11

HOMEPAGE=	http://sourceforge.net/projects/dumpmpeg/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes


MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dumpmpeg/}

LIB_DEPENDS =	devel/smpeg
WANTLIB =	SDL c pthread smpeg>=1.3

USE_GROFF =	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
