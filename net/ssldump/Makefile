# $OpenBSD: Makefile,v 1.18 2019/07/17 14:46:34 danj Exp $

COMMENT=	SSLv3/TLS network protocol analyzer

DISTNAME=	ssldump-0.9b3
REVISION=	3
CATEGORIES=	net

HOMEPAGE=	https://github.com/adulau/ssldump

PERMIT_PACKAGE=	Yes

WANTLIB=		c crypto m pcap ssl

MASTER_SITES=		http://www.rtfm.com/ssldump/

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=	--with-openssl-inc=/usr/include \
			--with-openssl-lib=/usr/lib

NO_TEST=		Yes

.include <bsd.port.mk>
