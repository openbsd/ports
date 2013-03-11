# $OpenBSD: Makefile,v 1.18 2013/03/11 11:41:25 espie Exp $

COMMENT=	library to interface the ident protocol server (rfc1413)

SHARED_LIBS +=	ident                     0.0 # 0.0

DISTNAME=	libident-0.32
CATEGORIES=	devel net security
MASTER_SITES=	http://www.remlab.net/files/libident/

HOMEPAGE=	http://www.remlab.net/libident/

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes

CONFIGURE_STYLE=	gnu
USE_LIBTOOL=		Yes

USE_GROFF=	Yes

.include <bsd.port.mk>
