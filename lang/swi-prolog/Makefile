# $OpenBSD: Makefile,v 1.54 2014/07/16 12:35:23 espie Exp $

BROKEN-mips64 = 	undefined reference to `__sync_fetch_and_add_8'
BROKEN-hppa =		undefined reference to `__sync_fetch_and_add_4'
BROKEN-sparc64 =	infinite loop or aborts during build

COMMENT =		Prolog for the real world

V =			6.6.4
REVISION =		1
DISTNAME =		pl-$V
PKGNAME =		swi-prolog-$V
CATEGORIES =		lang

SHARED_LIBS =		pl	5.0

HOMEPAGE =		http://www.swi-prolog.org/

MAINTAINER =		Edd Barrett <edd@openbsd.org>

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =		${HOMEPAGE}/download/stable/src/ \
			http://distfiles.nl/

CONFIGURE_STYLE =		gnu
MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC}/src \
				${WRKSRC}/packages/jpl \
				${WRKSRC}/packages/xpce/src

CONFIGURE_ENV +=	CIFLAGS=' -I${LOCALBASE}/include' \
			LDFLAGS=' -L${LOCALBASE}/lib' \
			COFLAGS='${CFLAGS}'

CONFIGURE_ARGS =	--enable-mt \
			--disable-custom-flags \
			--with-world \
			--with-jpeg=${LOCALBASE} \
			${CONFIGURE_SHARED}

USE_GMAKE =		Yes
USE_GROFF =		Yes

# Don't pick up bash
MAKE_ENV =		MAKESHELL=/bin/sh

MAKE_FLAGS =		SONAMEOPT= \
			SHAREDV=libpl.so.${LIBpl_VERSION}

BUILD_DEPENDS =		${RUN_DEPENDS}
LIB_DEPENDS =		devel/gmp \
			devel/libexecinfo \
			graphics/jpeg

WANTLIB += ICE SM X11 Xext Xft Xinerama Xpm Xt c crypto execinfo
WANTLIB += fontconfig gmp jpeg m ncursesw pthread
WANTLIB += readline ssl z

FULLARCH =		${MACHINE_ARCH:S/amd64/x86_64/}-openbsd${OSREV}
SUBST_VARS +=		V BOOT FULLARCH

post-install:
	cd ${PREFIX}/lib && \
		ln -sf swipl-$V/lib/${FULLARCH}/libpl.so.${LIBpl_VERSION}
	mv ${PREFIX}/lib/swipl-${V}/doc ${PREFIX}/share/doc/swipl

# Swipl multithreading flaky at best on OpenBSD.
# We are not sure if this is our threading implementation or their code.
# The following tests fail (hang). We remove them to allow the rest
# of the tests to execute atleast.
# When updating, uncomment these to see if they still fail.
pre-test:
	rm -f ${WRKBUILD}/src/Tests/core/test_resource_error.pl

.include <bsd.port.mk>

.for _m in ${MACHINE_ARCH}
.  if !empty(LP64_ARCHS:M${_m})
BOOT =	boot64
.  endif
.endfor
BOOT ?=	boot32
