# $OpenBSD: Makefile,v 1.2 2002/05/13 23:31:24 espie Exp $

COMMENT=	"dump frames from mpeg-1 movies"

VERSION=	0.6
DISTNAME=	dumpmpeg-${VERSION}
CATEGORIES=	graphics x11
NEED_VERSION=	1.419

HOMEPAGE=	http://sourceforge.net/projects/dumpmpeg/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=dumpmpeg/}

LIB_DEPENDS=	smpeg.1.3:smpeg-*:devel/smpeg

USE_X11=	Yes

SEPARATE_BUILD=	concurrent
CONFIGURE_STYLE= gnu

.include <bsd.port.mk>
