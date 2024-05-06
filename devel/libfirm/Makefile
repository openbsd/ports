# Has backends for amd64, arm (32-bit), i386, mips (32-bit), sparc (32-bit)
ONLY_FOR_ARCHS =	amd64 arm i386

# Must keep version number in sync with lang/cparser
COMMENT =	graph based intermediate representation and backend
DISTNAME =	${GH_PROJECT}-1.22.1pl3
CATEGORIES =	devel
REVISION =	0

SHARED_LIBS +=	firm                      3.0 # 3.0

# Upstream doesn't make real tarballs. Expects you to use tags/commits.
GH_ACCOUNT =	libfirm
GH_PROJECT =	libfirm
GH_COMMIT =	95a238ce4b6868abf9ce50ece0bde65832bf7e58

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

.include <bsd.port.mk>
