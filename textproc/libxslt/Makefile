# $OpenBSD: Makefile,v 1.21 2002/03/29 02:37:54 naddy Exp $

COMMENT=	"XSLT C Library for GNOME"

DISTNAME=	libxslt-1.0.14
CATEGORIES=	textproc
NEED_VERSION=	1.504
HOMEPAGE=	http://xmlsoft.org/XSLT/

MAINTAINER=	Shell Hung <shell@openbsd.org>

LIB_DEPENDS=	xml2.6.17::textproc/libxml

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://xmlsoft.org/ \
		ftp://xmlsoft.org/old/ \
		ftp://speakeasy.rpmfind.net/pub/libxml/ \
		ftp://fr.rpmfind.net/pub/libxml/

USE_GMAKE=	Yes

CONFIGURE_STYLE= gnu
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static
CONFIGURE_ARGS+= --with-libxml-include-prefix='${LOCALBASE}/include/'

REGRESS_TARGET=	tests

.include <bsd.port.mk>

