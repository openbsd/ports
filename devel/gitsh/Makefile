# $OpenBSD: Makefile,v 1.1.1.1 2014/11/09 12:36:50 sthen Exp $

VERSION =		0.8

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
