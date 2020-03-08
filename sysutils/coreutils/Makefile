# $OpenBSD: Makefile,v 1.21 2020/03/08 04:04:02 bcallah Exp $

COMMENT =		file, shell and text manipulation utilities

DISTNAME =		coreutils-8.32
CATEGORIES =		sysutils

MAINTAINER =		Brian Callahan <bcallah@openbsd.org>

HOMEPAGE =		https://www.gnu.org/software/coreutils/coreutils.html

# GPLv3+
PERMIT_PACKAGE =	Yes

WANTLIB =		c iconv intl pthread

MASTER_SITES =		${MASTER_SITE_GNU:=coreutils/}
EXTRACT_SUFX =		.tar.xz

DEBUG_PACKAGES =	${BUILD_PACKAGES}

LIB_DEPENDS =		devel/gettext,-runtime

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS =	--program-prefix=g \
			--without-gmp

# Fixes a spurrious test failure
PORTHOME =		${WRKDIR}

# Prevent conflicts with: id, gpr and god
post-install:
.for I in gid god gpr
	mv "${PREFIX}/bin/$I" "${PREFIX}/bin/g$I"
	mv "${PREFIX}/man/man1/$I.1" "${PREFIX}/man/man1/g$I.1"
.endfor
	if test -f "${PREFIX}/libexec/coreutils/glibstdbuf.so"; then \
	    mv "${PREFIX}/libexec/coreutils/glibstdbuf.so" \
	       "${PREFIX}/libexec/coreutils/libstdbuf.so"; \
	fi

.include <bsd.port.mk>
