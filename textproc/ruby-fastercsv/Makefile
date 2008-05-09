# $OpenBSD: Makefile,v 1.4 2008/05/09 17:51:12 bernd Exp $

COMMENT=	faster ruby CSV library

DISTNAME=	fastercsv-1.2.3
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

REGRESS_DEPENDS=::devel/ruby-rake

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake test

.include <bsd.port.mk>
