# OpenBSD makefile for: xlife
# Version required:     3.0
# Date created:         May 19 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/05/19 23:28:10 angelos Exp $
#

DISTNAME=       xlife
PKGNAME=	xlife-3.0
CATEGORIES=	games
MASTER_SITES=	ftp://ftp.cdrom.com/pub/X11/R5contrib/	\
		ftp://ftp.iij.ad.jp/X/R5contrib/
MASTER_SITE_SUBDIR=	../../R5contrib
EXTRACT_SUFX=	.tar.Z

MAINTAINER=	angelos@openbsd.org

USE_IMAKE=      yes

pre-install:
	@(cd ${WRKSRC}; make install.patterns)

.include <bsd.port.mk>
