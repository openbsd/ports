# $OpenBSD: Makefile,v 1.1.1.1 2019/12/21 14:16:53 jasper Exp $

COMMENT =		JFFS2 filesystem extraction tool

MODPY_EGG_VERSION =	0.2
GH_COMMIT =		6f9169bad3ceb4e212fae62ad710eeca3350226b
GH_PROJECT =		jefferson
GH_ACCOUNT =		sviehb
DISTNAME =		jefferson-${MODPY_EGG_VERSION}

CATEGORIES =		sysutils

MAINTAINER =		Jasper Lievisse Adriaanse <jasper@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MODULES =		lang/python
# With python3 extraction fails with:
#  File "/usr/local/lib/python3.7/site-packages/jefferson/rtime.py", line 7, in decompress
#    value = ord(data_in[pos])
# TypeError: ord() expected string of length 1, but int found
#MODPY_VERSION =		${MODPY_DEFAULT_VERSION_3}

RUN_DEPENDS =		archivers/py-backports-lzma \
			devel/py-cstruct${MODPY_FLAVOR}

NO_TEST =		Yes

.include <bsd.port.mk>
