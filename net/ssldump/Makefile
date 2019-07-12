# $OpenBSD: Makefile,v 1.17 2019/07/12 20:48:49 sthen Exp $

COMMENT=	SSLv3/TLS network protocol analyzer

DISTNAME=	ssldump-0.9b3
REVISION=	2
CATEGORIES=	net

HOMEPAGE=	https://github.com/adulau/ssldump

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE=	Yes

WANTLIB=		c crypto m pcap ssl

MASTER_SITES=		http://www.rtfm.com/ssldump/

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=	--with-openssl-inc=/usr/include \
			--with-openssl-lib=/usr/lib

NO_TEST=		Yes

.include <bsd.port.mk>
