# $OpenBSD: Makefile,v 1.16 2015/10/13 06:29:38 bentley Exp $

COMMENT=	dump frames from mpeg-1 movies

VERSION=	0.6
DISTNAME=	dumpmpeg-${VERSION}
REVISION =	2
CATEGORIES=	graphics x11

HOMEPAGE=	http://sourceforge.net/projects/dumpmpeg/

MAINTAINER=	Peter Valchev <pvalchev@sightly.net>

PERMIT_PACKAGE_CDROM=   Yes


MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dumpmpeg/}

LIB_DEPENDS =	devel/smpeg
WANTLIB =	SDL c pthread smpeg>=1.3

SEPARATE_BUILD=	Yes
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
