# $OpenBSD: Makefile,v 1.3 2007/07/23 16:53:00 ajacoutot Exp $

PKG_ARCH=	*

COMMENT=	substitute for MS TTF core fonts

V=		0.2
BASENAME=	liberation-fonts
DISTNAME=	${BASENAME}-ttf-3
PKGNAME=	${BASENAME}-${V}p0
CATEGORIES=	x11

HOMEPAGE=	http://www.redhat.com/promo/fonts/

MAINTAINER=	Antoine Jacoutot <ajacoutot@openbsd.org>

# GPLv2+exception license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	https://www.redhat.com/f/fonts/

NO_BUILD=	Yes
NO_REGRESS=	Yes

WRKDIST=	${WRKDIR}/${BASENAME}-${V}
INST_DIR=	${PREFIX}/lib/X11/fonts/Liberation

do-install:
	${INSTALL_DATA_DIR} ${INST_DIR}
	${INSTALL_DATA} ${WRKSRC}/{*.ttf,*.txt} ${INST_DIR}

.include <bsd.port.mk>
