# $OpenBSD: Makefile,v 1.5 2006/05/09 14:16:50 robert Exp $

COMMENT=	"configuration file library for PHP"

DISTNAME=	Config-1.10.3
PKGNAME=	pear-${DISTNAME}p0
CATEGORIES=	devel pear

MASTER_SITES=	http://pear.php.net/get/
EXTRACT_SUFX=	.tgz

MAINTAINER=	Marc Balmer <mbalmer@openbsd.org>
MODULES=	www/php5/pear

RUN_DEPENDS=	:pear-XML-Parser-*:textproc/pear-XML-Parser \
		:pear-XML-Util-*:textproc/pear-XML-Util

# PHP License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

.include <bsd.port.mk>
