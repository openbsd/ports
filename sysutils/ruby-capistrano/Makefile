# $OpenBSD: Makefile,v 1.21 2015/05/16 06:53:02 ajacoutot Exp $

COMMENT =	execute commands in parallel on multiple remote machines

DISTNAME =	capistrano-3.4.0
CATEGORIES =	sysutils
REVISION =	0

HOMEPAGE =	http://www.capistranorb.com/

# MIT
PERMIT_PACKAGE_CDROM =		Yes

MODULES =		lang/ruby

CONFIGURE_STYLE =	ruby gem

BUILD_DEPENDS =		${RUN_DEPENDS}
RUN_DEPENDS =		devel/ruby-i18n,${MODRUBY_FLAVOR} \
			net/ruby-sshkit,${MODRUBY_FLAVOR}

.include <bsd.port.mk>
