# $OpenBSD: Makefile,v 1.16 2004/11/14 13:53:00 espie Exp $

COMMENT=	"interface to access block/stream encryption algorithms"

DISTNAME=	libmcrypt-2.5.7
PKGNAME=	${DISTNAME}p0
CATEGORIES=	security

HOMEPAGE=	http://mcrypt.sf.net/
MAINTAINER=	Anil Madhavapeddy <avsm@openbsd.org>
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=mcrypt/}

LIB_DEPENDS=	mhash.2::security/mhash \
		ltdl.1::devel/libtool,-ltdl

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS= ${CONFIGURE_SHARED}
CONFIGURE_ARGS+= --enable-static

.include <bsd.port.mk>
