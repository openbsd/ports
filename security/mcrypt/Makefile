# $OpenBSD: Makefile,v 1.4 2001/03/24 01:34:45 avsm Exp $

DISTNAME=		mcrypt-2.5.5
CATEGORIES=     	security
NEED_VERSION=		1.363

HOMEPAGE=		http://mcrypt.hellug.gr/mcrypt/
MAINTAINER=		Anil Madhavapeddy <avsm@openbsd.org>

COMMENT=		extendable encryption program that supports many ciphers

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		ftp://mcrypt.hellug.gr/pub/mcrypt/ \
			ftp://argeas.cs-net.gr/pub/unix/mcrypt

USE_LIBTOOL=		Yes
LIB_DEPENDS=		mcrypt.6::security/libmcrypt \
			intl.1::devel/gettext

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+= 	--enable-static --with-catgets
CONFIGURE_ENV+=  	CPPFLAGS="-I${LOCALBASE}/include" \
                	LDFLAGS="-L${LOCALBASE}/lib -lintl -lltdl"

.include <bsd.port.mk>
