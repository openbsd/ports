# $OpenBSD: Makefile,v 1.1.1.1 2000/11/18 14:44:52 jakob Exp $

DISTNAME=		ssldump-0.9b1
CATEGORIES=     	net
NEED_VERSION=		1.319

HOMEPAGE=		http://www.rtfm.com/ssldump/

MAINTAINER=		Jakob Schlyter <jakob@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		http://www.rtfm.com/ssldump/

CONFIGURE_STYLE=	gnu dest
CONFIGURE_ARGS+=	--with-openssl-inc=/usr/include \
			--with-openssl-lib=/usr/lib

.include <bsd.port.mk>
