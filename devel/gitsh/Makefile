# $OpenBSD: Makefile,v 1.3 2015/07/16 17:27:08 jeremy Exp $

VERSION =		0.9

COMMENT =		interactive shell for git

DISTNAME =		gitsh-${VERSION}
REVISION =		0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/thoughtbot/gitsh

MAINTAINER =		Mike Burns <mike+openbsd@mike-burns.com>

# License: BSD
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB +=		c

MASTER_SITES =		https://github.com/thoughtbot/gitsh/releases/download/v${VERSION}/

MODULES =		lang/ruby
RUN_DEPENDS =		devel/git

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu
CONFIGURE_ENV =		RUBY="${RUBY}"

.include <bsd.port.mk>
