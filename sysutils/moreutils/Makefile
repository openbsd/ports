# $OpenBSD: Makefile,v 1.11 2015/06/08 09:02:49 sthen Exp $

COMMENT =	miscellaneous unix tools

DISTNAME =	moreutils_0.56
PKGNAME =	${DISTNAME:S/_/-/}
T =		7be6572532be02c03653f33dbf87c03b01e2bb26
DISTFILES=	${DISTNAME}{$T}.tar.gz
WRKDIST =	${WRKDIR}/moreutils

CATEGORIES =	sysutils

HOMEPAGE =	http://joey.kitenet.net/code/moreutils/

MAINTAINER =	Stuart Henderson <sthen@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	 Yes

WANTLIB += c

#MASTER_SITES =		${MASTER_SITE_DEBIAN:=main/m/moreutils/}
MASTER_SITES =		http://repo.or.cz/w/moreutils.git/snapshot/

BUILD_DEPENDS =		textproc/docbook-xsl
RUN_DEPENDS =		devel/p5-IPC-Run \
			devel/p5-Time-Duration \
			devel/p5-Time-TimeDate

FAKE_FLAGS =		PREFIX=${PREFIX}
USE_GMAKE =		Yes
NO_TEST =		Yes

pre-patch:
	mv ${WRKDIR}/moreutils-* ${WRKDIST}
	perl -pi -e 's,/usr/share/xml/docbook/stylesheet/docbook-xsl/manpages,${LOCALBASE}/share/xsl/docbook/manpages,' ${WRKSRC}/Makefile

.include <bsd.port.mk>
