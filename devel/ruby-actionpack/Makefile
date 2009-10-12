# $OpenBSD: Makefile,v 1.21 2009/10/12 14:26:01 pirofti Exp $

COMMENT =	eases web-request routing, handling, and response

DISTNAME =	actionpack-2.3.4
PKGNAME =	ruby-${DISTNAME}
CATEGORIES =	devel

# MIT License
PERMIT_PACKAGE_CDROM =   Yes
PERMIT_PACKAGE_FTP =     Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =   Yes

MASTER_SITES =   ${MASTER_SITE_RUBYFORGE:=actionpack/}

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	:ruby-activesupport->=2.3.4:devel/ruby-activesupport \
		:ruby-rack->=1.0.0:www/ruby-rack

CONFIGURE_STYLE =	ruby gem

PKG_ARCH =	*

post-extract:
	@find ${WRKSRC} -name '*~' | xargs -r rm -f

REGRESS_DEPENDS =	:ruby-mocha->=0.9.7:devel/ruby-mocha \
			:ruby-activerecord-*:databases/ruby-activerecord
MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
