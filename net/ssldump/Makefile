# $OpenBSD: Makefile,v 1.16 2016/03/01 18:14:26 mmcc Exp $

COMMENT=	SSLv3/TLS network protocol analyzer

DISTNAME=	ssldump-0.9b3
REVISION=	2
CATEGORIES=	net

HOMEPAGE=	https://github.com/adulau/ssldump

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c crypto m pcap ssl

MASTER_SITES=		http://www.rtfm.com/ssldump/

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=	--with-openssl-inc=/usr/include \
			--with-openssl-lib=/usr/lib

NO_TEST=		Yes

.include <bsd.port.mk>
