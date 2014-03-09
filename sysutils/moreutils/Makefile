# $OpenBSD: Makefile,v 1.8 2014/03/09 22:19:35 sthen Exp $

COMMENT =	miscellaneous unix tools

DISTNAME =	moreutils_0.51
PKGNAME =	${DISTNAME:S/_/-/}
WRKDIST =	${WRKDIR}/moreutils

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
	perl -pi -e 's,/usr/share/xml/docbook/stylesheet/docbook-xsl/manpages,${LOCALBASE}/share/xsl/docbook/manpages,' ${WRKSRC}/Makefile

.include <bsd.port.mk>
