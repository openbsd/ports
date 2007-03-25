# $OpenBSD: Makefile,v 1.11 2007/03/25 09:59:35 steven Exp $

COMMENT=	"companion library to APR"

DISTNAME=	apr-util-1.2.7
PKGNAME=	${DISTNAME}p1
FULLPKGNAME=	apr-util${MT}-1.2.7p1
SHARED_LIBS +=	aprutil-1${MT}          2.7      # .2.7

CATEGORIES=	devel

MAINTAINER=	Aleksander Piotrowski <alek@openbsd.org>

HOMEPAGE=	http://apr.apache.org/

FLAVORS=	mt
FLAVOR?=

# Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_APACHE:=apr/}

LIB_DEPENDS=	lib/db4/db.=4:db-4.*:databases/db/v4 \
		expat.>=4:expat->=1.95.6:textproc/expat

MODULES=	converters/libiconv		
USE_LIBTOOL=	Yes
CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--with-apr=${LOCALBASE} \
		--with-dbm=db4 \
		--with-berkeley-db=${LOCALBASE}/include/db4:${LOCALBASE}/lib/db4 \
		--with-expat=${LOCALBASE} \
		--with-iconv=${LOCALBASE} \
		--includedir=${LOCALBASE}/include/apr-1${MT}/ \
		--with-apr=${LOCALBASE}/bin/apr-1${MT}-config

MT?=
.if ${FLAVOR:L:Mmt}
MT=-mt
LIB_DEPENDS+=	apr-1-mt.=2:apr-mt-1.2.7:devel/apr,mt

post-install:
	sed 's/{APRUTIL_LIBNAME}/{APRUTIL_LIBNAME}-mt/g' ${WRKSRC}/apu-config.out > ${PREFIX}/bin/apu-mt
	rm ${PREFIX}/bin/apu

.else
LIB_DEPENDS+=	apr-1.=2:apr-1.2.7:devel/apr
.endif

SUBST_VARS+=	MT
MAKE_ENV+=	MT=${MT}
FAKE_ENV+=	MT=${MT}

.include <bsd.port.mk>
