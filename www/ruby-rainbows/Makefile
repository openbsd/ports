# $OpenBSD: Makefile,v 1.3 2011/03/14 20:45:10 jeremy Exp $

COMMENT =	ruby-unicorn for sleepy apps and slow clients

DISTNAME =	rainbows-3.1.0
CATEGORIES =	www

HOMEPAGE =	http://rainbows.rubyforge.org/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# Ruby/GPLv2
PERMIT_PACKAGE_CDROM = Yes
PERMIT_PACKAGE_FTP = Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP = Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	www/ruby-unicorn,${MODRUBY_FLAVOR}>=3.4,<4.0 \
		www/ruby-rack,${MODRUBY_FLAVOR}>=1.1.0,<2.0

CONFIGURE_STYLE = ruby gem ext

post-install:
	cd ${WRKINST}/${LOCALBASE}/${GEM_LIB}/gems/${DISTNAME}/man/man1 && \
		mv rainbows.1 ${WRKINST}/${LOCALBASE}/man/man1/rainbows${GEM_MAN_SUFFIX}.1
	rm -r ${WRKINST}/${LOCALBASE}/${GEM_LIB}/gems/${DISTNAME}/man

# Regress fails for various different reasons,
# many of which are due to nonportable test code
REGRESS_DEPENDS = devel/gmake \
		devel/ruby-isolate,${MODRUBY_FLAVOR}>=3.0.0,<3.1 \
		net/socat \
		net/curl

do-regress:
	cd ${WRKSRC} && RUBYLIB=$$(dirname `${GEM} which rack`) \
		RUBY=${RUBY} MRI=${RUBY} MAKE="gmake -e" gmake -e test

.include <bsd.port.mk>
