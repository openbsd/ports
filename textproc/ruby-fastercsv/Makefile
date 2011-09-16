# $OpenBSD: Makefile,v 1.15 2011/09/16 11:41:41 espie Exp $

COMMENT=	faster Ruby CSV library

DISTNAME=	fastercsv-1.5.4
REVISION=	0
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
