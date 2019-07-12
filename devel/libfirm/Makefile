# $OpenBSD: Makefile,v 1.4 2019/07/12 20:44:38 sthen Exp $

# Has backends for amd64, arm (32-bit), i386, mips (32-bit), sparc (32-bit)
ONLY_FOR_ARCHS =	amd64 arm i386

# Must keep version number in sync with lang/cparser
COMMENT =	graph based intermediate representation and backend
DISTNAME =	${GH_PROJECT}-1.22.1pl2
CATEGORIES =	devel

SHARED_LIBS +=	firm                      2.0 # 2.0

# Upstream doesn't make real tarballs. Expects you to use tags/commits.
GH_ACCOUNT =	libfirm
GH_PROJECT =	libfirm
GH_COMMIT =	b5269b56fc71ae323d344af3f6c28cf0a6a8ba4b

HOMEPAGE =	https://pp.ipd.kit.edu/firm/
MAINTAINER =	Brian Callahan <bcallah@openbsd.org>

# LGPLv2.1+
PERMIT_PACKAGE =	Yes

WANTLIB += m

MODULES =	lang/python
MODPY_RUNDEP =	No
MODPY_ADJ_FILES =	scripts/gen_ir.py

CONFIGURE_STYLE =	none

USE_GMAKE =	Yes
MAKE_FLAGS =	DLLEXT=".so.${LIBfirm_VERSION}" \
		REVISION="${GH_COMMIT}" V=1 variant=optimize

FAKE_FLAGS =	DESTDIR=

NO_TEST =	Yes

.include <bsd.port.mk>
