# $OpenBSD: Makefile,v 1.3 2004/07/04 23:40:05 mjc Exp $

COMMENT=		"asynchronous dns resolver client library and utilities"
DISTNAME=		adns-1.1
CATEGORIES=		net devel

HOMEPAGE=		http://www.chiark.greenend.org.uk/~ian/adns/

MAINTAINER=		Michael Coulter <mjc@openbsd.org>

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
