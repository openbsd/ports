# $OpenBSD: Makefile,v 1.4 2002/08/07 18:31:33 wcobb Exp $

COMMENT=		"Rich city simulation game for X"

DISTNAME=		lincity-1.11
CATEGORIES=		games
HOMEPAGE=		http://www.floot.demon.co.uk/lincity.html

MAINTAINER=		Wilbern Cobb <wcobb@openbsd.org>

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
NO_REGRESS=		Yes

.include <bsd.port.mk>
