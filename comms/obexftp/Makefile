# $OpenBSD: Makefile,v 1.16 2015/03/16 18:07:38 naddy Exp $

COMMENT=		file copying over the OBEX protocol
DISTNAME=		obexftp-0.10.4
REVISION=		2

SHARED_LIBS +=	bfb                  0.4      # .0.4
SHARED_LIBS +=	cobexbfb             0.8      # .0.8
SHARED_LIBS +=	obexftp              0.11     # .0.11

CATEGORIES=		comms
HOMEPAGE=		http://triq.net/obex/

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c openobex>=1

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=openobex/}

LIB_DEPENDS=		comms/openobex
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
