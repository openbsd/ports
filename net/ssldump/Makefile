# $OpenBSD: Makefile,v 1.3 2001/03/24 19:55:46 jakob Exp $

COMMENT=	SSLv3/TLS network protocol analyzer

DISTNAME=	ssldump-0.9b1
PKGNAME=	ssldump-0.9b1p1
CATEGORIES=    	net
NEED_VERSION=	1.363

HOMEPAGE=	http://www.rtfm.com/ssldump/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.rtfm.com/ssldump/

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=	--with-openssl-inc=/usr/include \
			--with-openssl-lib=/usr/lib

.include <bsd.port.mk>
