# $OpenBSD: Makefile,v 1.14 2013/03/11 11:35:57 espie Exp $

COMMENT=	SSLv3/TLS network protocol analyzer

VERSION=	0.9b3
DISTNAME=	ssldump-${VERSION}
REVISION=	0
CATEGORIES=    	net

HOMEPAGE=	http://www.rtfm.com/ssldump/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c crypto m pcap ssl 

MASTER_SITES=		http://www.rtfm.com/ssldump/

USE_GMAKE=		Yes
USE_GROFF =		Yes
CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=	--with-openssl-inc=/usr/include \
			--with-openssl-lib=/usr/lib

NO_TEST=		Yes

.include <bsd.port.mk>
