# $OpenBSD: Makefile,v 1.37 2016/07/06 10:29:51 jasper Exp $

COMMENT=	resend network traffic saved by tcpdump

DISTNAME=	tcpreplay-4.0.5
CATEGORIES=	net
REVISION=	1

HOMEPAGE=	http://tcpreplay.appneta.com/	

MAINTAINER=	Nigel Taylor <nigel@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes

MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=tcpreplay/}

WANTLIB=	c dnet>=1

CONFIGURE_STYLE= gnu
USE_GROFF =	Yes

LIB_DEPENDS=	net/libdnet
BUILD_DEPENDS=	devel/autogen

.include <bsd.port.mk>
