# $OpenBSD: Makefile,v 1.3 2005/01/20 18:48:54 alek Exp $

COMMENT=	"Apache Portable Runtime"

DISTNAME=	apr-1.0.1
PKGNAME=	apr-1.0.1p1
CATEGORIES=	devel

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

HOMEPAGE=	http://apr.apache.org/

# Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.apache.org/dist/apr/ \
		http://www.eu.apache.org/dist/apr/

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-installbuilddir=${LOCALBASE}/lib/apr-1/ \
		--enable-other-child \
		--disable-threads

.include <bsd.port.mk>
