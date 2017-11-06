# $OpenBSD: Makefile,v 1.1.1.1 2017/11/06 01:21:07 bcallah Exp $

# Depends on devel/libfirm
ONLY_FOR_ARCHS =	amd64 arm i386

# Must keep version number in sync with devel/libfirm
COMMENT =	C99 parser and frontend for libFirm
DISTNAME =	cparser-1.22.1
CATEGORIES =	lang

# amd64 PIC *just* missed 1.22.0; this goes away next update
GH_ACCOUNT =	libfirm
GH_PROJECT =	cparser
GH_COMMIT =	1930dff97172e8199c0d6f452f59dee47569d594

HOMEPAGE =	https://pp.ipd.kit.edu/firm/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += c firm m

# Uncomment next update
# MASTER_SITES =	https://github.com/libfirm/cparser/archive/

MODULES =	devel/cmake

LIB_DEPENDS =	devel/libfirm

NO_TEST =	Yes

# GitHub has silly naming practices. Uncomment next update.
# WRKDIST =	${WRKDIR}/cparser-${DISTNAME}

.include <bsd.port.mk>
