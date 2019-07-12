# $OpenBSD: Makefile,v 1.19 2019/07/12 21:02:29 sthen Exp $

COMMENT =	ruby-unicorn for sleepy apps and slow clients

DISTNAME =	rainbows-5.1.1
CATEGORIES =	www

HOMEPAGE =	https://bogomips.org/rainbows/

MAINTAINER =	Jeremy Evans <jeremy@openbsd.org>

# Ruby/GPLv2
PERMIT_PACKAGE = Yes

MODULES =	lang/ruby

BUILD_DEPENDS =	${RUN_DEPENDS}
RUN_DEPENDS =	devel/ruby-kgio,${MODRUBY_FLAVOR}>=2.5,<3.0 \
		www/ruby-unicorn,${MODRUBY_FLAVOR}>=5.1,<6.0 \
		www/ruby-rack,${MODRUBY_FLAVOR}>=1.1.0,<3.0

CONFIGURE_STYLE = ruby gem

post-install:
	cd ${WRKINST}/${LOCALBASE}/${GEM_LIB}/gems/${DISTNAME}/man/man1 && \
		mv rainbows.1 ${WRKINST}/${LOCALBASE}/man/man1/rainbows${GEM_MAN_SUFFIX}.1
	rm -r ${WRKINST}/${LOCALBASE}/${GEM_LIB}/gems/${DISTNAME}/man

.include <bsd.port.mk>
