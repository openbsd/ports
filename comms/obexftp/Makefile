# $OpenBSD: Makefile,v 1.1.1.1 2004/11/12 08:06:54 grange Exp $

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

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=openobex/}

LIB_DEPENDS=		openobex.1::comms/openobex
CONFIGURE_STYLE=	gnu

.include <bsd.port.mk>
