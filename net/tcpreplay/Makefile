# $OpenBSD: Makefile,v 1.28 2010/10/18 18:36:58 espie Exp $

COMMENT=	resend network traffic saved by tcpdump

DISTNAME=	tcpreplay-3.4.1
REVISION=	0
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
USE_GROFF =	Yes

LIB_DEPENDS=	dnet.>=1::net/libdnet

.include <bsd.port.mk>
