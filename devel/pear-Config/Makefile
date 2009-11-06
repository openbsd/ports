# $OpenBSD: Makefile,v 1.10 2009/11/06 08:32:36 jasper Exp $

COMMENT=	configuration file library for PHP

DISTNAME=	Config-1.10.7
PKGNAME=	pear-${DISTNAME}p1
CATEGORIES=	devel pear

MODULES=	www/pear

RUN_DEPENDS=	:pear-XML-Parser-*:textproc/pear-XML-Parser \
		:pear-XML-Util-*:textproc/pear-XML-Util

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
