# $OpenBSD: Makefile,v 1.2 2004/11/21 22:29:50 espie Exp $

COMMENT=		"file copying over the OBEX protocol"
DISTNAME=		obexftp-0.10.4
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

.include <bsd.port.mk>
