# $OpenBSD: Makefile,v 1.3 2001/05/08 03:45:14 shell Exp $

COMMENT=	'fast XSLT module for perl'

VERSION=	0.99_02
DISTNAME=	XML-LibXSLT-${VERSION}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
NEED_VERSION=	1.408

HOMEPAGE=	http://www.axkit.org/

MASTER_SITES=	http://www.axkit.org/download/

MAINTAINER=	Shell Hung <shell@openbsd.org>

LIB_DEPENDS=	xml2.5::textproc/libxml \
		xslt.0::textproc/libxslt

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
