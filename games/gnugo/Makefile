# $OpenBSD: Makefile,v 1.11 2001/05/05 22:08:24 fgsch Exp $

COMMENT=	GNU version of Go

DISTNAME=	gnugo-2.6
CATEGORIES=	games
NEED_VERSION=	1.406
MASTER_SITES=	${MASTER_SITE_GNU}
MASTER_SITE_SUBDIR= gnugo

MAINTAINER=	Federico Schwindt <fgsch@openbsd.org>

HOMEPAGE=	http://www.gnu.org/software/gnugo/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu

MAKE_FLAGS=		MAKEINFO="makeinfo --no-split"

post-configure:
	@cd ${WRKSRC}/doc && touch gnugo.texi

.include <bsd.port.mk>
