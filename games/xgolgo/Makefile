# $OpenBSD: Makefile,v 1.16 2004/11/28 22:41:25 espie Exp $
#

COMMENT=	"watch what you are doing -- are you hostile"

DISTNAME=	xeyes-g
PKGNAME=	xgolgo-1.0
CATEGORIES=	games

# License: BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		ICE SM X11 Xext Xmu Xt c m

MASTER_SITES=	ftp://ftp.netlab.is.tsukuba.ac.jp/pub/X/our_collections/misc/

CONFIGURE_STYLE=imake noman

WRKDIST=	${WRKDIR}/xeyes

NO_REGRESS=	Yes

post-install:
	${INSTALL_MAN} ${WRKSRC}/xeyes.man ${PREFIX}/man/man1/xgolgo.1

.include <bsd.port.mk>
