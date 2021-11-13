# $OpenBSD: Makefile,v 1.24 2021/11/13 21:58:30 sthen Exp $

COMMENT =	pass compatible password manager written in go

MODGO_MODNAME =	github.com/gopasspw/gopass
MODGO_VERSION =	v1.12.8
REVISION =	0

DISTNAME =	gopass-${MODGO_VERSION}

CATEGORIES =	security

# MIT
PERMIT_PACKAGE =	Yes

# uses pledge()
WANTLIB += c pthread

HOMEPAGE =	https://www.gopass.pw/

MODULES =	lang/go
MODGO_LDFLAGS =	-X "main.version=${MODGO_VERSION}"

RUN_DEPENDS =	devel/git \
		security/gnupg>=2.2.23p1

# for tests; some still fail
PORTHOME =	${WRKDIR}

post-install:
	${INSTALL_MAN} ${WRKSRC}/gopass.1 ${PREFIX}/man/man1/

WRKDIST=	${WRKDIR}/github.com/gopasspw/gopass@${MODGO_VERSION}

.include "modules.inc"

.include <bsd.port.mk>
