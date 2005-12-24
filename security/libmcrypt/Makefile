# $OpenBSD: Makefile,v 1.17 2005/12/24 22:32:53 sturm Exp $

COMMENT=	"interface to access block/stream encryption algorithms"

DISTNAME=	libmcrypt-2.5.7
PKGNAME=	${DISTNAME}p1
CATEGORIES=	security
SHARED_LIBS=	mcrypt	8.7
MODGNU_SHARED_LIBS=mcrypt	''
LIBmcrypt_ALIAS=realmcrypt

HOMEPAGE=	http://mcrypt.sf.net/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mcrypt/}

LIB_DEPENDS=	mhash.2::security/mhash \
		ltdl.1::devel/libtool,-ltdl

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

USE_LIBTOOL=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

.include <bsd.port.mk>
