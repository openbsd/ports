# $OpenBSD: Makefile,v 1.1.1.1 2017/11/06 01:19:16 bcallah Exp $

# Has backends for amd64, arm (32-bit), i386, mips (32-bit), sparc (32-bit)
ONLY_FOR_ARCHS =	amd64 arm i386

# Must keep version number in sync with lang/cparser
COMMENT =	graph based intermediate representation and backend
DISTNAME =	libfirm-1.22.1
CATEGORIES =	devel

SHARED_LIBS +=	firm                      0.0 # 0.0

# amd64 PIC *just* missed 1.22.0; this will go away next update
GH_ACCOUNT =	libfirm
GH_PROJECT =	libfirm
GH_COMMIT =	130099bc8afbca472500e378d927e1251d68bc18

HOMEPAGE =	https://pp.ipd.kit.edu/firm/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB += m

# Uncomment next update
# MASTER_SITES =	https://github.com/libfirm/libfirm/archive/

MODULES =	devel/cmake \
		lang/python
MODPY_RUNDEP =	No

CONFIGURE_ARGS =	-DBUILD_SHARED_LIBS:Bool=On

NO_TEST =	Yes

# GitHub has silly naming practices. Uncomment next update.
# WRKDIST =	${WRKDIR}/libfirm-${DISTNAME}

.include <bsd.port.mk>
