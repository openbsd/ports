# OpenBSD makefile for: xgas
# Date created:         May 20 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.5 2000/04/04 15:15:58 kevlo Exp $
#

DISTNAME=	xgas
PKGNAME=        xgas-1.0
CATEGORIES=     misc
MASTER_SITES=   ftp://ftp.tut.ac.jp/.h3/X11/X11R6/contrib/programs/

MAINTAINER=     angelos@openbsd.org

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

FAKE=		Yes
USE_IMAKE=      Yes

post-install:
	@chmod 755 ${PREFIX}/bin/xgas
	@chown bin.bin ${PREFIX}/bin/xgas

.include <bsd.port.mk>
