COMMENT =		shell script analysis tool

MODCABAL_STEM =		ShellCheck
MODCABAL_VERSION =	0.11.0
MODCABAL_EXECUTABLES =	shellcheck
PKGNAME =		${DISTNAME:L}
CATEGORIES =		devel
HOMEPAGE =		https://www.shellcheck.net/

MAINTAINER =		Caspar Schutijser <caspar@schutijser.com>

# GPLv3
PERMIT_PACKAGE =	Yes

WANTLIB =		c ffi gmp iconv m pthread util

# cabal-bundler --openbsd ShellCheck-0.11.0 --executable shellcheck
MODULES =		devel/cabal

LIB_DEPENDS =		converters/libiconv \
			devel/gmp \
			devel/libffi
RUN_DEPENDS-main =

NO_TEST =		Yes

# pkg_add pandoc; cd ${WRKSRC}; ./manpage; cp shellcheck.1 ${FILESDIR}/
# (and update md5)
post-patch:
	@[ `md5 < ${WRKSRC}/shellcheck.1.md` == 4c5ca3383a710991d71139af84ad5c40 ] || \
	    (echo "*** manpage changed; regenerate ${FILESDIR}/shellcheck.1"; sleep 3)

post-install:
	${INSTALL_DATA} ${FILESDIR}/shellcheck.1 ${PREFIX}/man/man1/

.include "cabal.inc"

.include <bsd.port.mk>
