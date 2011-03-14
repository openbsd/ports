# $OpenBSD: Makefile,v 1.14 2011/03/14 17:40:34 jeremy Exp $

COMMENT=	faster Ruby CSV library

DISTNAME=	fastercsv-1.5.4
CATEGORIES=	textproc

# GPLv2
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

MODRUBY_REGRESS= rake

.include <bsd.port.mk>
