# $OpenBSD: Makefile,v 1.11 2010/11/11 12:35:14 sthen Exp $

COMMENT=	package provides methods for HTML forms

DISTNAME=	HTML_QuickForm-3.2.5
PKGNAME=	pear-${DISTNAME:S/_/-/}
REVISION=	0
CATEGORIES=	devel www

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

MODULES=	www/pear

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	:pear-HTML-Common2->=0.1.0:www/pear-HTML-Common2

.include <bsd.port.mk>
