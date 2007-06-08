# $OpenBSD: Makefile,v 1.4 2007/06/08 17:49:40 rui Exp $

COMMENT=	"library to determine file type"
V=		4.21
DISTNAME= 	file-${V}
PKGNAME=	libmagic-${V}
SHARED_LIBS=	magic	1.0
CATEGORIES=	sysutils

HOMEPAGE=	ftp://ftp.astron.com/pub/file/

MAINTAINER=	Rui Reis <rui@rui.cx>

# BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://ftp.astron.com/pub/file/

WANTLIB=	z 
CONFIGURE_STYLE=gnu
USE_LIBTOOL=	Yes

.include <bsd.port.mk>
