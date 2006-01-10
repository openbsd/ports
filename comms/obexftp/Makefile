# $OpenBSD: Makefile,v 1.4 2006/01/10 11:31:00 espie Exp $

COMMENT=		"file copying over the OBEX protocol"
DISTNAME=		obexftp-0.10.4
PKGNAME=		${DISTNAME}p0
SHARED_LIBS=		bfb		0.4 \
			cobexbfb	0.8 \
			obexftp		0.11

CATEGORIES=		comms
HOMEPAGE=		http://triq.net/obex/
MAINTAINER=		Alexander Yurchenko <grange@openbsd.org>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=openobex/}

LIB_DEPENDS=		openobex.1::comms/openobex
CONFIGURE_STYLE=	gnu

USE_LIBTOOL=		Yes

.include <bsd.port.mk>
