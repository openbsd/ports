# $OpenBSD: Makefile,v 1.12 2001/09/10 13:18:04 fgsch Exp $

COMMENT=	GNU version of Go

DISTNAME=	gnugo-3.0.0
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
