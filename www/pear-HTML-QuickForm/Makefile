# $OpenBSD: Makefile,v 1.12 2010/11/22 08:36:52 espie Exp $

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

RUN_DEPENDS=	www/pear-HTML-Common2>=0.1.0

.include <bsd.port.mk>
