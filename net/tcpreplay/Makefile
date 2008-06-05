# $OpenBSD: Makefile,v 1.24 2008/06/05 19:41:22 rui Exp $

COMMENT=	resend network traffic saved by tcpdump

DISTNAME=	tcpreplay-3.3.1
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
