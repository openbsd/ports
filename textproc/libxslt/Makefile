# $OpenBSD: Makefile,v 1.7 2001/07/20 17:36:50 shell Exp $

COMMENT=	"the XSLT C Library for GNOME"

DISTNAME=	libxslt-0.14.0
CATEGORIES=	textproc
NEED_VERSION=	1.427
HOMEPAGE=	http://xmlsoft.org/XSLT/

MAINTAINER=	Shell Hung <shell@openbsd.org>

LIB_DEPENDS=	xml2.6::textproc/libxml

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://xmlsoft.org/ \
		ftp://speakeasy.rpmfind.net/pub/libxml/ \
		ftp://fr.rpmfind.net/pub/libxml/

USE_GMAKE=	Yes

CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static

.include <bsd.port.mk>
