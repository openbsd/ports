# $OpenBSD: Makefile,v 1.11 2012/08/24 07:05:51 ajacoutot Exp $

COMMENT=	small network calculator

DISTNAME=	ipcalc-1.4
CATEGORIES=	net

HOMEPAGE=	https://github.com/pyr/ipcalc 

MAINTAINER=	Pierre-Yves Ritschard <pyr@spootnik.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	https://github.com/downloads/pyr/ipcalc/

FAKE_FLAGS=	MANDIR="${PREFIX}/man/man"

NO_REGRESS=	Yes
WANTLIB=	c

.include <bsd.port.mk>
