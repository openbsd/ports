# $OpenBSD: Makefile,v 1.8 2001/10/25 05:56:05 pvalchev Exp $

COMMENT=	"multiplayer 2d space battles game"

DISTNAME=	xpilot-4.4.2
CATEGORIES=	games x11
NEED_VERSION=	1.482

HOMEPAGE=	http://www.xpilot.org/

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	ftp://ftp.xpilot.org/pub/xpilot/ \
		ftp://ftp.xpilot.org/pub/xpilot/old \
		${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR= games/multiplayer

USE_X11=	Yes

CONFIGURE_STYLE= imake

.include <bsd.port.mk>
