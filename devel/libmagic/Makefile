# $OpenBSD: Makefile,v 1.12 2011/09/21 17:20:56 jasper Exp $

COMMENT=	library to determine file type
V=		5.00
DISTNAME= 	file-${V}
PKGNAME=	libmagic-${V}
SHARED_LIBS=	magic	2.0
CATEGORIES=	sysutils devel
REVISION=	0

HOMEPAGE=	ftp://ftp.astron.com/pub/file/

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.astron.com/pub/file/

WANTLIB=	z 
CONFIGURE_STYLE=gnu
USE_LIBTOOL=	Yes
USE_GROFF =	Yes

.include <bsd.port.mk>
