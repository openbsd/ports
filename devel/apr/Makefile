# $OpenBSD: Makefile,v 1.27 2012/06/26 19:35:30 kili Exp $

COMMENT=	Apache Portable Runtime

V=		1.4.6
DISTNAME=	apr-$V
REVISION=	0
SHARED_LIBS +=	apr-1             4.6     # .4.6

CATEGORIES=	devel

MAINTAINER=	Stefan Sperling <stsp@openbsd.org>

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
		--includedir=${LOCALBASE}/include/apr-1/ \
		--with-installbuilddir=${LOCALBASE}/lib/apr-1/ \
		--enable-other-child \
		--enable-threads \
		ac_cv_prog_AWK=awk

pre-install:
	rm -f ${WRKSRC}/libtool

.include <bsd.port.mk>
