# $OpenBSD: Makefile,v 1.1.1.1 2001/02/10 18:56:16 reinhard Exp $

DISTNAME=	xpilot-4.3.0
CATEGORIES=	games x11
NEED_VERSION=	1.353

HOMEPAGE=	http://www.xpilot.org/

MASTER_SITES=	ftp://ftp.xpilot.org/pub/xpilot/ \
		ftp://ftp.xpilot.org/pub/xpilot/old \
		${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR= games/multiplayer

MAINTAINER=	Peter Valchev <pvalchev@toxiclinux.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

USE_X11=	Yes

CONFIGURE_STYLE= imake

.include <bsd.port.mk>
