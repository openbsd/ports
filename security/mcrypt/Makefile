# $OpenBSD: Makefile,v 1.15 2004/10/20 18:28:17 avsm Exp $

COMMENT=	"extendable encryption program that supports many ciphers"

DISTNAME=		mcrypt-2.6.4
CATEGORIES=     	security

HOMEPAGE=		http://mcrypt.sf.net/
MAINTAINER=		Anil Madhavapeddy <avsm@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=mcrypt/}

USE_LIBTOOL=		Yes
USE_GMAKE=		Yes
MODULES=		devel/gettext
LIB_DEPENDS=		mcrypt.6::security/libmcrypt \
			ltdl.1::devel/libtool

CONFIGURE_STYLE=	gnu
CONFIGURE_ARGS+= 	${CONFIGURE_SHARED}
CONFIGURE_ARGS+= 	--enable-static --with-catgets 
CONFIGURE_ENV+=  	CPPFLAGS="-I${LOCALBASE}/include" \
                	LDFLAGS="-L${LOCALBASE}/lib -lintl -liconv -lltdl"

.include <bsd.port.mk>
