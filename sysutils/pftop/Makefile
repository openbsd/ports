# $OpenBSD: Makefile,v 1.8 2007/09/15 21:14:02 merdely Exp $
#

COMMENT=	curses-based real time state and rule display for pf

DISTNAME=	pftop-0.6
CATEGORIES=	sysutils

HOMEPAGE=	http://www.eee.metu.edu.tr/~canacar/pftop/
MAINTAINER=	Can Erkin Acar <canacar@openbsd.org>

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c curses 

MASTER_SITES=	http://www.eee.metu.edu.tr/~canacar/

MAKE_ENV=	OSLEVEL=42
.include <bsd.port.mk>
