# $OpenBSD: Makefile,v 1.7 2006/11/03 10:56:44 alek Exp $

COMMENT=	"Apache Portable Runtime"

DISTNAME=	apr-1.2.7
SHARED_LIBS +=	apr-1                2.7      # .2.7

CATEGORIES=	devel

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

HOMEPAGE=	http://apr.apache.org/

# Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_APACHE:=apr/}

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-installbuilddir=${LOCALBASE}/lib/apr-1/ \
		--enable-other-child \
		--disable-threads

.include <bsd.port.mk>
