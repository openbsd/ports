# $OpenBSD: Makefile,v 1.7 2000/10/22 14:03:57 espie Exp $

PKGNAME=	rclock-2.6.1
DISTNAME=	rxvt-2.6.1
CATEGORIES=	x11
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
GNU_CONFIGURE=  Yes
FAKE=		Yes

ALL_TARGET=	clock

.include <bsd.port.mk>
