# $OpenBSD: Makefile,v 1.14 2002/05/13 12:31:07 fgsch Exp $

COMMENT=	GNU version of Go

DISTNAME=	gnugo-3.0.0
CATEGORIES=	games
NEED_VERSION=	1.528
MASTER_SITES=	${MASTER_SITE_GNU:=gnugo/}

MAINTAINER=	Federico Schwindt <fgsch@openbsd.org>

HOMEPAGE=	http://www.gnu.org/software/gnugo/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu

MAKE_FLAGS=		MAKEINFO="makeinfo --no-split"

.include <bsd.port.mk>
