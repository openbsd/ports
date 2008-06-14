# $OpenBSD: Makefile,v 1.5 2008/06/14 23:57:18 landry Exp $

COMMENT=	faster ruby CSV library

DISTNAME=	fastercsv-1.2.3
PKGNAME=	ruby-${DISTNAME}p0
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

REGRESS_DEPENDS=::devel/ruby-rake

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake test

.include <bsd.port.mk>
