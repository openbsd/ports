# $OpenBSD: Makefile,v 1.19 2000/03/15 23:59:53 rohee Exp $
# Original from: Bruno Rohee <rohee@OpenBSD.ORG>
#
DISTNAME=		blackbox-0.51.3.1
CATEGORIES=		x11
MASTER_SITES=		ftp://portal.alug.org/pub/blackbox/0.5x.x/ \
			ftp://ftp.dti.ad.jp/pub/X/blackbox/0.5x.x/

MAINTAINER=		rohee@OpenBSD.ORG

HOMEPAGE=		http://blackbox.alug.org/

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_X11=		Yes
GNU_CONFIGURE=		Yes

FAKE=			Yes

.if defined(WITH_KDE) && ${WITH_KDE:U} == Yes
CONFIGURE_ARGS+= 	--enable-kde
.endif

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/blackbox
	cd ${WRKSRC} && ${INSTALL_DATA} AUTHORS COPYING ChangeLog README \
	    ${PREFIX}/share/doc/blackbox

.include <bsd.port.mk>
