# $OpenBSD: Makefile,v 1.2 2004/12/09 01:12:13 kevlo Exp $

COMMENT=	"Apache Portable Runtime"

DISTNAME=	apr-1.0.1
PKGNAME=	apr-1.0.1p0
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
		--enable-other-child

.include <bsd.port.mk>
