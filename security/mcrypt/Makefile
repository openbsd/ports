# $OpenBSD: Makefile,v 1.10 2002/12/29 20:31:40 fgsch Exp $

COMMENT=		extendable encryption program that supports many ciphers

DISTNAME=		mcrypt-2.5.7
CATEGORIES=     	security

HOMEPAGE=		http://mcrypt.hellug.gr/mcrypt/
MAINTAINER=		Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://mcrypt.hellug.gr/pub/mcrypt/ \
			ftp://argeas.cs-net.gr/pub/unix/mcrypt

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
MODULES=		gettext
LIB_DEPENDS=		mcrypt.6::security/libmcrypt \
			ltdl.1::devel/libtool

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+= 	--enable-static --with-catgets
CONFIGURE_ENV+=  	CPPFLAGS="-I${LOCALBASE}/include" \
                	LDFLAGS="-L${LOCALBASE}/lib -lintl -lltdl"

.include <bsd.port.mk>
