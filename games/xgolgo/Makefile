# $OpenBSD: Makefile,v 1.11 2001/05/06 01:06:25 lebel Exp $
#

COMMENT=	"watch what you are doing -- are you hostile"

DISTNAME=	xeyes-g
PKGNAME=	xgolgo-1.0
CATEGORIES=	games
NEED_VERSION=	1.402

MAINTAINER=	ports@openbsd.org

LICENSE_TYPE=		BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.netlab.is.tsukuba.ac.jp/pub/X/our_collections/misc/

CONFIGURE_STYLE=imake noman

WRKDIST=	${WRKDIR}/xeyes

post-install:
	${INSTALL_MAN} ${WRKSRC}/xeyes.man ${PREFIX}/man/man1/xgolgo.1

.include <bsd.port.mk>
