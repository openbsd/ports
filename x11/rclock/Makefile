# $OpenBSD: Makefile,v 1.5 2000/04/09 17:38:44 espie Exp $

PKGNAME=	rclock-2.6.1
DISTNAME=	rxvt-2.6.1
CATEGORIES=	x11
FAKE=No
MASTER_SITES=	ftp://ftp.rxvt.org/pub/rxvt/ \
		ftp://mason.primenet.com.au/pub/rxvt/ \
		${MASTER_SITE_SUNSITE}
MASTER_SITE_SUBDIR= X11/terms

MAINTAINER=	angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=	yes
GNU_CONFIGURE=  yes

ALL_TARGET=	clock

.include <bsd.port.mk>
