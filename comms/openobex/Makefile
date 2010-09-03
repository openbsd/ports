# $OpenBSD: Makefile,v 1.11 2010/09/03 14:39:07 sthen Exp $

COMMENT=		OBEX protocol implementation
DISTNAME=		openobex-1.0.1
REVISION=		3

SHARED_LIBS +=	openobex             1.0      # .1.0

CATEGORIES=		comms
HOMEPAGE=		http://openobex.triq.net/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=openobex/}

USE_GMAKE=		Yes
USE_LIBTOOL=		Yes
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
