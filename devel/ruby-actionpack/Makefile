# $OpenBSD: Makefile,v 1.26 2010/11/24 21:35:13 jeremy Exp $

COMMENT =	eases web-request routing, handling, and response

DISTNAME =	actionpack-2.3.4
REVISION =	2
CATEGORIES =	devel

# MIT License
PERMIT_PACKAGE_CDROM =   Yes
PERMIT_PACKAGE_FTP =     Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =   Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-activesupport,${MODRUBY_FLAVOR}>=2.3.4 \
		www/ruby-rack,${MODRUBY_FLAVOR}>=1.0.0

CONFIGURE_STYLE =	ruby gem

post-extract:
	@find ${WRKSRC} -name '*~' | xargs -r rm -f

REGRESS_DEPENDS =	devel/ruby-mocha,${MODRUBY_FLAVOR}>=0.9.7 \
			databases/ruby-activerecord,${MODRUBY_FLAVOR}
MODRUBY_REGRESS =	rake

.include <bsd.port.mk>
