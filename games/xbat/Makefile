# $OpenBSD: Makefile,v 1.16 2004/11/28 22:41:22 espie Exp $
#

COMMENT=	"XEVIOUS-like shooting game"

DISTNAME=	xev111
PKGNAME=        xbat-1.11
CATEGORIES=     games

HOMEPAGE=	http://www.nemoto.ecei.tohoku.ac.jp/~wai/index_e.html

PERMIT_PACKAGE_CDROM=	"possible copyright infringement"
PERMIT_PACKAGE_FTP=	"possible copyright infringement"
PERMIT_DISTFILES_CDROM=	"possible copyright infringement"
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		X11 Xext c m

MASTER_SITES=   http://www.nemoto.ecei.tohoku.ac.jp/~wai/Xbat/

CONFIGURE_STYLE=imake
WRKDIST=	${WRKDIR}/Xev111
ALL_TARGET=	xbat

NO_REGRESS=	Yes

.include <bsd.port.mk>
