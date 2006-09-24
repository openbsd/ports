# $OpenBSD: Makefile,v 1.6 2006/09/24 18:33:44 grange Exp $

COMMENT=		"file copying over the OBEX protocol"
DISTNAME=		obexftp-0.10.4
PKGNAME=		${DISTNAME}p0
SHARED_LIBS=		bfb		0.4 \
			cobexbfb	0.8 \
			obexftp		0.11

CATEGORIES=		comms
HOMEPAGE=		http://triq.net/obex/

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=openobex/}

LIB_DEPENDS=		openobex.>=1::comms/openobex
CONFIGURE_STYLE=	gnu

USE_LIBTOOL=		Yes

.include <bsd.port.mk>
