# $OpenBSD: Makefile,v 1.1.1.1 2018/03/11 22:34:40 kn Exp $

COMMENT =		package compiler and linker metadata toolkit

DISTNAME =		pkgconf-1.4.2

SHARED_LIBS +=		pkgconf 0.0	# 3.0

CATEGORIES =		devel

HOMEPAGE =		https://github.com/pkgconf/pkgconf

MAINTAINER =		Adam Steen <adam@adamsteen.com.au>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c

MASTER_SITES =		https://distfiles.dereferenced.org/pkgconf/

TEST_DEPENDS =		devel/kyua-cli

SEPARATE_BUILD =	Yes
CONFIGURE_STYLE =	gnu

PORTHOME =		${WRKDIR}

.include <bsd.port.mk>
