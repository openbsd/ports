# $OpenBSD: Makefile,v 1.5 2002/09/14 08:40:52 jakob Exp $

COMMENT=	SSLv3/TLS network protocol analyzer

DISTNAME=	ssldump-0.9b3
CATEGORIES=    	net

HOMEPAGE=	http://www.rtfm.com/ssldump/

MAINTAINER=	Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.rtfm.com/ssldump/

USE_GMAKE=		Yes
CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=	--with-openssl-inc=/usr/include \
			--with-openssl-lib=/usr/lib

.include <bsd.port.mk>
