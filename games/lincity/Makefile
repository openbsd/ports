# $OpenBSD: Makefile,v 1.2 2002/03/21 20:57:07 espie Exp $

COMMENT=		"Rich city simulation game for X"

DISTNAME=		lincity-1.11
CATEGORIES=		games
NEED_VERSION=		1.515
HOMEPAGE=		http://www.floot.demon.co.uk/lincity.html

MAINTAINER=		Wilbern Cobb <cobb@vedge.com.ar>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://ftp.demon.co.uk/pub/unix/linux/games/ \
			ftp://ftp.sra.co.jp/pub/os/FreeBSD/distfiles/

USE_X11=		Yes

MAKE_FLAGS=		CXXFLAGS="${CXXFLAGS}"
ALL_TARGET=		xlincity

.include <bsd.port.mk>
