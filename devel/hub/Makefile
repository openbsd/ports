# $OpenBSD: Makefile,v 1.3 2016/05/10 16:47:13 czarkoff Exp $

COMMENT =		wraps git in order to extend it with extra features

GH_ACCOUNT =		github
GH_PROJECT =		hub
GH_TAGNAME =		v2.2.3
CATEGORIES =		devel

HOMEPAGE =		https://hub.github.com

MAINTAINER =		Fabian Raetz <fabian.raetz@gmail.com>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c pthread

MODULES =		lang/go

MODGO_ENV=		GO15VENDOREXPERIMENT=1 PATH="${PORTPATH}" \
			CFLAGS="${CFLAGS}"

RUN_DEPENDS =		devel/git

post-install:
	${INSTALL_MAN} ${WRKSRC}/man/hub.1 ${PREFIX}/man/man1/

.include <bsd.port.mk>
