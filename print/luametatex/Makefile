COMMENT =	TeX engine for ConTeXt

V =		2.11.08
PKGNAME =	luametatex-${V}

# note: upstream forgot to tag this release it seems.
DIST_TUPLE =	github contextgarden luametatex b51333fea8011aa6d341ef8af9536010b3a7fb4e .

CATEGORIES =	print textproc

HOMEPAGE =	https://github.com/contextgarden/luametatex

MAINTAINER =	Edd Barrett <edd@openbsd.org>

# Mostly GPLv2. See source/license.txt:
# "It's a mixed bag but basically all permit usage and extensions"
PERMIT_PACKAGE =	Yes

# Note: statically embedded lua interpreter for $reasons:
# https://github.com/contextgarden/luametatex/issues/6#issuecomment-1619143916
MODULES =		devel/cmake

WANTLIB +=		c m

COMPILER =		base-clang ports-gcc base-gcc
COMPILER_LANGS =	c

.include <bsd.port.mk>
