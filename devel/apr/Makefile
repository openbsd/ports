# $OpenBSD: Makefile,v 1.1.1.1 2004/11/28 14:27:38 alek Exp $

COMMENT=	"Apache Portable Runtime"

DISTNAME=	apr-1.0.1
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
		--enable-threads \
		--enable-other-child

.include <bsd.port.mk>
