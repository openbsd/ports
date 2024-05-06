COMMENT =	regression testing system for apertium data and tools

DISTNAME =	apertium-regtest-$V
V =		0.9.1
REVISION =	0

CATEGORIES =	textproc

HOMEPAGE =	https://wiki.apertium.org/wiki/Apertium-regtest

MAINTAINER =		Anthony J. Bentley <anthony@anjbe.name>

# GPLv3 only
PERMIT_PACKAGE =	Yes

SITES =		https://github.com/apertium/apertium-regtest/releases/download/v$V/

EXTRACT_SUFX =		.tar.bz2

MODULES =		lang/python
MODPY_BUILDDEP =	No

CONFIGURE_STYLE =	autoreconf

AUTOCONF_VERSION =	2.71
AUTOMAKE_VERSION =	1.16

MODPY_ADJ_FILES =	apertium-regtest.py

.include <bsd.port.mk>
