# $OpenBSD: Makefile,v 1.4 1998/10/07 00:34:46 marc Exp $
#

DISTNAME=		xmcd-2.3
CATEGORIES=		audio

MAINTAINER=		form@vs.itam.nsc.ru

MASTER_SITES=		${MASTER_SITE_XCONTRIB}
MASTER_SITE_SUBDIR=	applications/xmcd

LIB_DEPENDS=    	Xm\\.1\\.:${PORTSDIR}/x11/lesstif
USE_IMAKE=		yes
IS_INTERACTIVE=		yes	# asks a lot of questions

post-install:
	${CP} ${WRKSRC}/README ${PREFIX}/lib/X11/xmcd

.include <bsd.port.mk>
