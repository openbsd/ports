# $OpenBSD: Makefile,v 1.17 2011/05/04 16:16:24 gsoares Exp $

COMMENT=	library to interface the ident protocol server (rfc1413)

SHARED_LIBS +=	ident                     0.0 # 0.0

DISTNAME=	libident-0.32
CATEGORIES=	devel net security
MASTER_SITES=	http://www.remlab.net/files/libident/

HOMEPAGE=	http://www.remlab.net/libident/

# Public Domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE=	gnu
USE_LIBTOOL=		Yes

USE_GROFF=	Yes

.include <bsd.port.mk>
