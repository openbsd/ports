# $OpenBSD: Makefile,v 1.6 2006/10/28 11:19:20 espie Exp $

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

MASTER_SITES=	http://www.apache.org/dist/apr/ \
		http://www.eu.apache.org/dist/apr/

USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--with-installbuilddir=${LOCALBASE}/lib/apr-1/ \
		--enable-other-child \
		--disable-threads

.include <bsd.port.mk>
