# $OpenBSD: Makefile,v 1.2 2015/12/12 20:01:10 jasper Exp $

COMMENT =		wraps git in order to extend it with extra features

V =			2.2.2
GH_ACCOUNT =		github
GH_PROJECT =		hub
GH_TAGNAME =		v$V
DISTNAME =		${GH_PROJECT}-$V
CATEGORIES =		devel

HOMEPAGE =		https://hub.github.com

MAINTAINER =		Fabian Raetz <fabian.raetz@gmail.com>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread

MODULES =		lang/go

RUN_DEPENDS =		devel/git

post-install:
	${INSTALL_MAN} ${WRKSRC}/man/hub.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
