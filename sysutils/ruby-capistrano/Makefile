# $OpenBSD: Makefile,v 1.22 2019/07/12 20:49:50 sthen Exp $

COMMENT =	execute commands in parallel on multiple remote machines

DISTNAME =	capistrano-3.4.0
CATEGORIES =	sysutils
REVISION =	0

HOMEPAGE =	http://www.capistranorb.com/

# MIT
PERMIT_PACKAGE =		Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-i18n,${MODRUBY_FLAVOR} \
			net/ruby-sshkit,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
