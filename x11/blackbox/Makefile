# $OpenBSD: Makefile,v 1.21 2000/06/11 08:42:37 fgsch Exp $

DISTNAME=		blackbox-0.51.3.1
CATEGORIES=		x11
NEED_VERSION=		1.301
MASTER_SITES=		ftp://portal.alug.org/pub/blackbox/0.5x.x/ \
			ftp://ftp.dti.ad.jp/pub/X/blackbox/0.5x.x/

MAINTAINER=		rohee@OpenBSD.ORG

HOMEPAGE=		http://blackbox.alug.org/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
CONFIGURE_STYLE=	gnu

FLAVORS=kde
.if defined(WITH_KDE) && ${WITH_KDE:U} == Yes
FLAVOR=kde
.endif
FLAVOR?=

.if ${FLAVOR:L} == "kde"
CONFIGURE_ARGS+= 	--enable-kde
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/blackbox
	cd ${WRKSRC} && ${INSTALL_DATA} AUTHORS COPYING ChangeLog README \
	    ${PREFIX}/share/doc/blackbox

.include <bsd.port.mk>
