# $OpenBSD: Makefile,v 1.4 2019/07/12 20:43:49 sthen Exp $

COMMENT=		read and convert TNEF files

SHARED_LIBS +=  ytnef                     0.0 # 0.0

DISTNAME=		libytnef-1.9.3

GH_ACCOUNT=		Yeraze
GH_PROJECT=		ytnef
GH_COMMIT=		24fe30e592a7a840b415dbbc16ba47c7a882bb38

CATEGORIES=		converters mail

MAINTAINER=		Robert Nagy <robert@openbsd.org>

RUN_DEPENDS=		mail/p5-MIME-tools

WANTLIB+=		c

# GPLv2
PERMIT_PACKAGE=	Yes

AUTOCONF_VERSION=	2.68
AUTOMAKE_VERSION=	1.15
CONFIGURE_STYLE=	autoreconf

do-test:
	cd ${WRKSRC}/test-data && /bin/sh test.sh

.include <bsd.port.mk>
