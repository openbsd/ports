# $OpenBSD: Makefile,v 1.2 2016/08/05 23:22:00 juanfra Exp $

COMMENT =		BASIC converter to C translator for Unix system

DISTNAME =		bacon-3.3.1
REVISION =		0

CATEGORIES =		lang

HOMEPAGE =		http://www.basic-converter.org/

MAINTAINER =		Juan Francisco Cantero Hurtado <juanfra@openbsd.org>

# MIT
PERMIT_PACKAGE_CDROM =	Yes

WANTLIB =		c m

MASTER_SITES =		http://www.basic-converter.org/stable/ \
			http://www.basic-converter.org/museum/

BUILD_DEPENDS =		shells/bash
RUN_DEPENDS =		shells/bash

CONFIGURE_STYLE =	gnu
# Disable the bacongui. It doesn't works on OpenBSD.
CONFIGURE_ARGS =	--with-bash \
			--disable-gui

NO_TEST =		Yes

# Use this step as a test for the compiler.
post-build:
	cd ${WRKBUILD} && \
	./build/bacon -y -a -c cc -r ranlib -d build bacon.bac

# The man page is broken.
post-install:
	rm "${PREFIX}/man/man1/bacon.1"

.include <bsd.port.mk>
