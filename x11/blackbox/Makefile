# $OpenBSD: Makefile,v 1.16 1999/12/18 11:25:41 fgsch Exp $

DISTNAME=	blackbox-0.51.3.1
CATEGORIES=	x11
MASTER_SITES=	ftp://portal.alug.org/pub/blackbox/0.5x.x/ \
		ftp://ftp.dti.ad.jp/pub/X/blackbox/0.5x.x/

MAINTAINER=	ports@openbsd.org

USE_X11=	yes
GNU_CONFIGURE=	yes

.if defined(WITH_KDE) && ${WITH_KDE:U} == YES
CONFIGURE_ARGS+= --enable-kde
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/blackbox
	cd ${WRKSRC} && ${INSTALL_DATA} AUTHORS COPYING ChangeLog README \
	    ${PREFIX}/share/doc/blackbox

.include <bsd.port.mk>
