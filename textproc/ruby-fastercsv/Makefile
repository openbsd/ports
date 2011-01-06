# $OpenBSD: Makefile,v 1.13 2011/01/06 04:24:24 jeremy Exp $

COMMENT=	faster Ruby CSV library

DISTNAME=	fastercsv-1.5.3
REVISION =	0
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
