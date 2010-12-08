# $OpenBSD: Makefile,v 1.27 2010/12/08 21:49:50 jeremy Exp $

COMMENT =	eases web-request routing, handling, and response

VERSION =	3.0.3
DISTNAME =	actionpack-${VERSION}
CATEGORIES =	devel

# MIT License
PERMIT_PACKAGE_CDROM =   Yes
PERMIT_PACKAGE_FTP =     Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =   Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-activesupport,${MODRUBY_FLAVOR}=${VERSION} \
		devel/ruby-activemodel,${MODRUBY_FLAVOR}=${VERSION} \
		devel/ruby-i18n,${MODRUBY_FLAVOR}>=0.4,<1.0 \
		devel/ruby-tzinfo,${MODRUBY_FLAVOR}>=0.3.23,<0.4 \
		www/ruby-rack,${MODRUBY_FLAVOR}>=1.2.1,<1.3 \
		www/ruby-rack-mount,${MODRUBY_FLAVOR}>=0.6.13,<0.7 \
		www/ruby-rack-test,${MODRUBY_FLAVOR}>=0.5.6,<0.6 \
		textproc/ruby-builder,${MODRUBY_FLAVOR}>=2.1.2,<2.2 \
		textproc/ruby-erubis,${MODRUBY_FLAVOR}>=2.6.6,<2.7

CONFIGURE_STYLE =	ruby gem

post-extract:
	@find ${WRKSRC} -name '*~' | xargs -r rm -f

REGRESS_DEPENDS =	devel/ruby-mocha,${MODRUBY_FLAVOR}>=0.9.7 \
			databases/ruby-activerecord,${MODRUBY_FLAVOR}
MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
