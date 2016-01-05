# $OpenBSD: Makefile,v 1.12 2016/01/05 22:04:02 sthen Exp $

COMMENT =	miscellaneous unix tools

V =		0.57
DISTNAME =	moreutils_$V
EXTRACT_SUFX =	.orig.tar.gz
PKGNAME =	moreutils-$V
WRKDIST =	${WRKDIR}/${PKGNAME}

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

FAKE_FLAGS =		PREFIX=${PREFIX}
USE_GMAKE =		Yes
NO_TEST =		Yes

pre-patch:
	sed -i 's,/usr/share/xml/docbook/stylesheet/docbook-xsl/manpages,${LOCALBASE}/share/xsl/docbook/manpages,' ${WRKSRC}/Makefile

.include <bsd.port.mk>
