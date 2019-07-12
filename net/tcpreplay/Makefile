# $OpenBSD: Makefile,v 1.39 2019/07/12 20:48:49 sthen Exp $

COMMENT=	resend network traffic saved by tcpdump

DISTNAME=	tcpreplay-4.0.5
CATEGORIES=	net
REVISION=	2

HOMEPAGE=	http://tcpreplay.appneta.com/	

MAINTAINER=	Nigel Taylor <nigel@openbsd.org>

# GPLv3
PERMIT_PACKAGE=	Yes

MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=tcpreplay/}

WANTLIB=	c dnet>=1

CONFIGURE_STYLE= gnu

LIB_DEPENDS=	net/libdnet
BUILD_DEPENDS=	devel/autogen

.include <bsd.port.mk>
