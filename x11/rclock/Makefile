# $OpenBSD: Makefile,v 1.9 2001/05/06 04:41:23 lebel Exp $

COMMENT=	"analog clock for X11 w/appoint. reminder and mail notif"

PKGNAME=	rclock-2.6.1
DISTNAME=	rxvt-2.6.1
CATEGORIES=	x11
NEED_VERSION=	1.402
MASTER_SITES=	ftp://ftp.rxvt.org/pub/rxvt/ \
		ftp://mason.primenet.com.au/pub/rxvt/ \
		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= X11/terms

MAINTAINER=	Angelos D. Keromytis <angelos@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	Yes
CONFIGURE_STYLE=gnu

ALL_TARGET=	clock

.include <bsd.port.mk>
