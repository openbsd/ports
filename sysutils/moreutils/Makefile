# $OpenBSD: Makefile,v 1.20 2020/03/02 19:44:34 sthen Exp $

COMMENT =	miscellaneous unix tools

V =		0.63
REVISION =	0
DISTNAME =	moreutils_$V.orig
PKGNAME =	moreutils-$V
WRKDIST =	${WRKDIR}/moreutils-$V
EXTRACT_SUFX =	.tar.xz

CATEGORIES =	sysutils

HOMEPAGE =	https://joeyh.name/code/moreutils/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE = Yes

WANTLIB += c

MASTER_SITES =		${MASTER_SITE_DEBIAN:=main/m/moreutils/}

BUILD_DEPENDS =		textproc/docbook-xsl
RUN_DEPENDS =		devel/p5-IPC-Run \
			devel/p5-Time-Duration \
			devel/p5-Time-TimeDate

MAKE_FLAGS =		DOCBOOKXSL=${LOCALBASE}/share/xsl/docbook
FAKE_FLAGS =		PREFIX=${PREFIX}
USE_GMAKE =		Yes
NO_TEST =		Yes

post-install:
	mv ${PREFIX}/bin/parallel{,.moreutils}
	mv ${PREFIX}/man/man1/parallel{,.moreutils}.1

.include <bsd.port.mk>
