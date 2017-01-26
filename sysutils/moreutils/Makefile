# $OpenBSD: Makefile,v 1.15 2017/01/26 15:44:46 sthen Exp $

COMMENT =	miscellaneous unix tools

V =		0.59
REVISION =	0
DISTNAME =	moreutils_$V.orig
PKGNAME =	moreutils-$V
WRKDIST =	${WRKDIR}/moreutils-$V.orig

CATEGORIES =	sysutils

HOMEPAGE =	http://joey.kitenet.net/code/moreutils/

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
