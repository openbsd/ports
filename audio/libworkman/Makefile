# $OpenBSD: Makefile,v 1.6 2001/10/25 22:34:49 wilfried Exp $

COMMENT=		'multi-platform CD-Player library'

DISTNAME=		libworkman-1999-06-20
PKGNAME=		libworkman-1.4
CATEGORIES=		audio
NEED_VERSION=		1.482

HOMEPAGE=		http://studserver.uni-dortmund.de/~su0922/WorkMan/

MAINTAINER=		Peter Stromberg <wilfried@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.midwinter.com/WorkMan/SNAPSHOTS/ \
			ftp://ftp.sra.co.jp/pub/os/FreeBSD/distfiles/

USE_X11=		Yes
NO_REGRESS=		Yes
CONFIGURE_STYLE=	imake

WRKDIST=		${WRKDIR}/libworkman

.include <bsd.port.mk>
