# $OpenBSD: Makefile,v 1.30 2013/03/21 08:45:14 ajacoutot Exp $

COMMENT=	Apache Portable Runtime

V=		1.4.6
DISTNAME=	apr-$V
REVISION=	1
SHARED_LIBS +=	apr-1             4.6     # .4.6

CATEGORIES=	devel

MAINTAINER=	Stefan Sperling <stsp@openbsd.org>

HOMEPAGE=	http://apr.apache.org/

# Apache License 2.0
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += pthread

MASTER_SITES=	${MASTER_SITE_APACHE:=apr/}

CONFIGURE_STYLE=gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} \
		--includedir=${LOCALBASE}/include/apr-1/ \
		--with-installbuilddir=${LOCALBASE}/lib/apr-1/ \
		--enable-other-child \
		--enable-threads \
		ac_cv_prog_AWK=awk

pre-install:
	rm -f ${WRKSRC}/libtool

.include <bsd.port.mk>
