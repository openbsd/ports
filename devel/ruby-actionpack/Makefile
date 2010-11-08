# $OpenBSD: Makefile,v 1.24 2010/11/08 23:28:53 jeremy Exp $

COMMENT =	eases web-request routing, handling, and response

DISTNAME =	actionpack-2.3.4
REVISION =      1
CATEGORIES =	devel

# MIT License
PERMIT_PACKAGE_CDROM =   Yes
PERMIT_PACKAGE_FTP =     Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =   Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	:${MODRUBY_PKG_PREFIX}-activesupport->=2.3.4:devel/ruby-activesupport,${FLAVOR} \
		:${MODRUBY_PKG_PREFIX}-rack->=1.0.0:www/ruby-rack,${FLAVOR}

CONFIGURE_STYLE =	ruby gem

post-extract:
	@find ${WRKSRC} -name '*~' | xargs -r rm -f

REGRESS_DEPENDS =	:${MODRUBY_PKG_PREFIX}-mocha->=0.9.7:devel/ruby-mocha,${FLAVOR} \
			:${MODRUBY_PKG_PREFIX}-activerecord-*:databases/ruby-activerecord,${FLAVOR}
MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
