# $OpenBSD: Makefile,v 1.10 2007/09/15 22:36:59 merdely Exp $

COMMENT=	SSLv3/TLS network protocol analyzer

VERSION=	0.9b3
DISTNAME=	ssldump-${VERSION}
PKGNAME=	ssldump-${VERSION}p0
CATEGORIES=    	net

HOMEPAGE=	http://www.rtfm.com/ssldump/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes
WANTLIB=		c crypto m pcap ssl 

MASTER_SITES=		http://www.rtfm.com/ssldump/

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=	--with-openssl-inc=/usr/include \
			--with-openssl-lib=/usr/lib

NO_REGRESS=	Yes

.include <bsd.port.mk>
