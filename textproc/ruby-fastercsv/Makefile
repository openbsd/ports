# $OpenBSD: Makefile,v 1.6 2008/10/24 14:41:49 bernd Exp $

COMMENT=	faster Ruby CSV library

DISTNAME=	fastercsv-1.4.0
PKGNAME=	ruby-${DISTNAME}
CATEGORIES=	textproc

# GPLv2
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
