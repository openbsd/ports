# $OpenBSD: Makefile,v 1.2 2007/06/01 16:24:48 jcs Exp $

COMMENT=	"faster ruby CSV library"

DISTNAME=	fastercsv-1.2.0
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	textproc

# gpl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_RUBYFORGE:=fastercsv/}

MODULES=	lang/ruby

CONFIGURE_STYLE=ruby gem

PKG_ARCH=	*

.include <bsd.port.mk>
