# $OpenBSD: Makefile,v 1.34 2013/03/11 11:35:57 espie Exp $

COMMENT=	resend network traffic saved by tcpdump

DISTNAME=	tcpreplay-3.4.4
REVISION =	1
CATEGORIES=	net

HOMEPAGE=	http://tcpreplay.synfin.net

MAINTAINER=	Nigel Taylor <nigel@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=tcpreplay/}

WANTLIB=	c dnet>=1

CONFIGURE_STYLE= gnu
USE_GROFF =	Yes

LIB_DEPENDS=	net/libdnet

.include <bsd.port.mk>
