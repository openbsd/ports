# $OpenBSD: Makefile,v 1.25 2002/07/11 17:21:41 shell Exp $

COMMENT=	"XSLT C Library for GNOME"

DISTNAME=	libxslt-1.0.19
CATEGORIES=	textproc
HOMEPAGE=	http://xmlsoft.org/XSLT/

MAINTAINER=	Shell Hung <shell@openbsd.org>

LIB_DEPENDS=	xml2.6.20::textproc/libxml

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://xmlsoft.org/ \
		ftp://xmlsoft.org/old/ \
		ftp://speakeasy.rpmfind.net/pub/libxml/ \
		ftp://fr.rpmfind.net/pub/libxml/

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static
CONFIGURE_ARGS+= --with-libxml-include-prefix='${LOCALBASE}/include/'
CONFIGURE_ARGS+= --with-python

REGRESS_TARGET=	tests

.include <bsd.port.mk>

