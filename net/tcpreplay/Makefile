# $OpenBSD: Makefile,v 1.25 2009/05/17 19:51:54 rui Exp $

COMMENT=	resend network traffic saved by tcpdump

DISTNAME=	tcpreplay-3.4.1
CATEGORIES=	net

HOMEPAGE=	http://tcpreplay.synfin.net

MAINTAINER=	Rui Reis <rui@openbsd.org>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=tcpreplay/}

WANTLIB=		c

CONFIGURE_STYLE= gnu

LIB_DEPENDS=	dnet.>=1::net/libdnet

.include <bsd.port.mk>
