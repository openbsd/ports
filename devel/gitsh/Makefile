# $OpenBSD: Makefile,v 1.4 2015/09/15 06:05:29 benoit Exp $

VERSION =		0.10

COMMENT =		interactive shell for git

DISTNAME =		gitsh-${VERSION}

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
