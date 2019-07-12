# $OpenBSD: Makefile,v 1.45 2019/07/12 20:44:03 sthen Exp $

COMMENT=	Apache Portable Runtime

V=		1.6.5
REVISION=	0
DISTNAME=	apr-$V
SHARED_LIBS +=	apr-1             7.0     # .6.2

CATEGORIES=	devel

MAINTAINER=	Stefan Sperling <stsp@openbsd.org>

HOMEPAGE=	http://apr.apache.org/

# Apache License 2.0
PERMIT_PACKAGE=	Yes

WANTLIB += pthread

MASTER_SITES=	${MASTER_SITE_APACHE:=apr/}

AUTOCONF_VERSION=2.69
CONFIGURE_STYLE=autoconf autoheader
# Prevent APR pools from re-using dynamic memory allocations:
CFLAGS="-DAPR_ALLOCATOR_MAX_FREE_DEFAULT=1"
CONFIGURE_ARGS=	--includedir=${LOCALBASE}/include/apr-1/ \
		--with-installbuilddir=${LOCALBASE}/lib/apr-1/ \
		--enable-other-child \
		--enable-threads \
		ac_cv_prog_AWK=awk
MODGNU_CONFIG_GUESS_DIRS=${WRKSRC}/build

post-configure:
	sed -i 's@$${LIBTOOL}@${LIBTOOL}@' ${WRKBUILD}/apr-1-config

pre-install:
	rm -f ${WRKSRC}/libtool

.include <bsd.port.mk>
