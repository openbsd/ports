# $OpenBSD: Makefile,v 1.30 2002/10/29 10:59:39 shell Exp $

COMMENT=	"XSLT C Library for GNOME"

DISTNAME=	libxslt-1.0.22
CATEGORIES=	textproc
HOMEPAGE=	http://xmlsoft.org/XSLT/

MAINTAINER=	Shell Hung <shell@openbsd.org>

LIB_DEPENDS=	xml2.6::textproc/libxml

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://xmlsoft.org/	\
		${MASTER_SITE_GNOME:=sources/libxslt/1.0/}

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static
CONFIGURE_ARGS+= --with-libxml-include-prefix='${LOCALBASE}/include/'
CONFIGURE_ARGS+= --without-python

REGRESS_TARGET=	tests

.include <bsd.port.mk>

