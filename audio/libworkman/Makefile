# $OpenBSD: Makefile,v 1.3 2001/03/14 12:23:12 wilfried Exp $

DISTNAME=		libworkman-1999-06-20
PKGNAME=		libworkman-1.4
CATEGORIES=		audio
NEED_VERSION=		1.340

HOMEPAGE=		http://studserver.uni-dortmund.de/~su0922/WorkMan/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.midwinter.com/WorkMan/SNAPSHOTS/ \
			ftp://ftp.funet.fi/pub/FreeBSD/eurocrypt/distfiles/ \
			ftp://ftp.sra.co.jp/pub/os/FreeBSD/distfiles/

USE_X11=		Yes
CONFIGURE_STYLE=	imake

WRKDIST=		${WRKDIR}/libworkman

.include <bsd.port.mk>
