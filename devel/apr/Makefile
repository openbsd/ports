# $OpenBSD: Makefile,v 1.40 2017/06/24 12:31:59 stsp Exp $

COMMENT=	Apache Portable Runtime

V=		1.6.2
DISTNAME=	apr-$V
SHARED_LIBS +=	apr-1             6.0     # .6.2

CATEGORIES=	devel

MAINTAINER=	Stefan Sperling <stsp@openbsd.org>

HOMEPAGE=	http://apr.apache.org/

# Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += pthread

MASTER_SITES=	${MASTER_SITE_APACHE:=apr/}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	--includedir=${LOCALBASE}/include/apr-1/ \
		--with-installbuilddir=${LOCALBASE}/lib/apr-1/ \
		--enable-other-child \
		--enable-threads \
		--enable-pool-debug=yes \
		ac_cv_prog_AWK=awk

pre-install:
	rm -f ${WRKSRC}/libtool

.include <bsd.port.mk>
