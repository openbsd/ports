# $OpenBSD: Makefile,v 1.6 2006/09/30 19:08:22 alek Exp $

COMMENT=	"companion library to APR"

DISTNAME=	apr-util-1.0.1
PKGNAME=	${DISTNAME}p4
SHARED_LIBS=	aprutil-1 0.1

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

RUN_DEPENDS=	lib/db4/db.=4:db-4.*:databases/db/v4 \
		expat.4:expat->=1.95.6:textproc/expat \
		apr-1.0:apr-1.0.1:devel/apr
BUILD_DEPENDS=	${RUN_DEPENDS}

MODULES=	converters/libiconv		
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-apr=${LOCALBASE} \
		--with-dbm=db4 \
		--with-berkeley-db=${LOCALBASE}/include/db4:${LOCALBASE}/lib/db4 \
		--with-expat=${LOCALBASE} \
		--with-iconv=${LOCALBASE}

.include <bsd.port.mk>
