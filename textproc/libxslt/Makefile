# $OpenBSD: Makefile,v 1.2 2001/05/21 02:59:30 shell Exp $

COMMENT=	"the XSLT C Library for GNOME"

DISTNAME=	libxslt-0.10.0
CATEGORIES=	textproc
NEED_VERSION=	1.399
HOMEPAGE=	http://xmlsoft.org/

MAINTAINER=	Shell Hung <shell@openbsd.org>

LIB_DEPENDS=	xml2.5::textproc/libxml

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	ftp://xmlsoft.org/

USE_GMAKE=	Yes

CONFIGURE_STYLE= autoconf
CONFIGURE_ARGS=	${CONFIGURE_SHARED} --enable-static

.include <bsd.port.mk>
