# $OpenBSD: Makefile,v 1.2 2008/06/14 23:46:38 landry Exp $

COMMENT=		high-level IO library for Ruby

DISTNAME=		highline-1.4.0
PKGNAME=		ruby-${DISTNAME}p0
CATEGORIES=		devel

HOMEPAGE=		http://highline.rubyforge.org/

# Ruby license
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=		${MASTER_SITE_RUBYFORGE:=highline/}

MODULES=		lang/ruby

CONFIGURE_STYLE=	ruby gem

PKG_ARCH=		*

REGRESS_DEPENDS=	::devel/ruby-rake

do-regress:
	@cd ${WRKBUILD} && ${LOCALBASE}/bin/rake test

.include <bsd.port.mk>
