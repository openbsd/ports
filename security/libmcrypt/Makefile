# $OpenBSD: Makefile,v 1.15 2004/10/20 18:30:56 avsm Exp $

COMMENT=	"interface to access block/stream encryption algorithms"

DISTNAME=	libmcrypt-2.5.7
CATEGORIES=	security

HOMEPAGE=	http://mcrypt.sf.net/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mcrypt/}

LIB_DEPENDS=	mhash.2::security/mhash \
		ltdl.1::devel/libtool

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

.include <bsd.port.mk>
