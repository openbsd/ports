# $OpenBSD: Makefile,v 1.1.1.1 2000/07/02 23:25:18 espie Exp $

DISTNAME=		qvwm-1.1.8
CATEGORIES=     	x11
NEED_VERSION=		1.310
HOMEPAGE=		http://www.qvwm.org/
MAINTAINER=		danh@nfol.com

# GPL
PERMIT_PACKAGE_CDROM=	Yes 
PERMIT_PACKAGE_FTP=	Yes 
PERMIT_DISTFILES_CDROM=	Yes 
PERMIT_DISTFILES_FTP=	Yes 

MASTER_SITES=		ftp://ftp.qvwm.org/pub/qvwm/

USE_X11=		Yes
CONFIGURE_STYLE=	gnu

CONFIGURE_ARGS+=--without-imlib
CONFIGURE_ARGS+=--without-esd

.include <bsd.port.mk>
