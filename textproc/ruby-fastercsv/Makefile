# $OpenBSD: Makefile,v 1.10 2010/11/08 23:28:55 jeremy Exp $

COMMENT=	faster Ruby CSV library

DISTNAME=	fastercsv-1.5.0
REVISION=	1
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
