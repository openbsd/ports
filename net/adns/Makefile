# $OpenBSD: Makefile,v 1.1.1.1 2003/05/05 03:20:40 margarida Exp $

COMMENT=		"asynchronous dns resolver client library and utilities"
DISTNAME=		adns-1.0
CATEGORIES=		net devel

HOMEPAGE=		http://www.chiark.greenend.org.uk/~ian/adns/

MAINTAINER=		Michael Coulter <mjc@bitz.ca>

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${HOMEPAGE}/ftp/

CONFIGURE_STYLE=	gnu dest
USE_GMAKE=		Yes

REGRESS_TARGET=		check

.include <bsd.port.mk>
