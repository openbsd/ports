# $OpenBSD: Makefile,v 1.16 2017/04/22 21:01:02 sthen Exp $

COMMENT =	miscellaneous unix tools

V =		0.60
DISTNAME =	moreutils_$V.orig
PKGNAME =	moreutils-$V
WRKDIST =	${WRKDIR}/moreutils-$V
EXTRACT_SUFX =	.tar.xz

CATEGORIES =	sysutils

HOMEPAGE =	https://joeyh.name/code/moreutils/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	 Yes

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

.include <bsd.port.mk>
