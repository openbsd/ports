# $OpenBSD: Makefile,v 1.22 2005/01/26 16:41:04 naddy Exp $

COMMENT=	"GNU version of Go"

DISTNAME=	gnugo-3.6
CATEGORIES=	games
MASTER_SITES=	${MASTER_SITE_GNU:=gnugo/}

MAINTAINER=	Federico Schwindt <fgsch@openbsd.org>

HOMEPAGE=	http://www.gnu.org/software/gnugo/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c m ncurses

CONFIGURE_STYLE=	gnu

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/gnugo
	${INSTALL_DATA} ${WRKSRC}/interface/gnugo.el \
		${PREFIX}/share/gnugo

do-regress:
	cd ${WRKSRC}/regression && ${MAKE} all_batches

.include <bsd.port.mk>
