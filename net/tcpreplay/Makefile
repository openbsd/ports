# $OpenBSD: Makefile,v 1.32 2011/09/07 13:23:50 nigel Exp $

COMMENT=	resend network traffic saved by tcpdump

DISTNAME=	tcpreplay-3.4.4
REVISION =	0
CATEGORIES=	net

HOMEPAGE=	http://tcpreplay.synfin.net

MAINTAINER=	Nigel Taylor <nigel@openbsd.org>

# GPLv3
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_SOURCEFORGE:=tcpreplay/}

WANTLIB=	c dnet>=1

CONFIGURE_STYLE= gnu
USE_GROFF =	Yes

LIB_DEPENDS=	net/libdnet

.include <bsd.port.mk>
