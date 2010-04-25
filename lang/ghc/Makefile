# $OpenBSD: Makefile,v 1.31 2010/04/25 13:40:30 kili Exp $

COMMENT-main =		compiler for the functional language Haskell
COMMENT-doc =		documentation for GHC

DISTNAME =		ghc-${MODGHC_VER}
PKGNAME-main =		ghc-${MODGHC_VER}p0
PKGNAME-doc =		ghc-doc-${MODGHC_VER}
CATEGORIES =		lang devel
HOMEPAGE =		http://www.haskell.org/ghc/

# Version of the precompiled binaries
BIN_VER =		6.12.1.20100318

# Pull in lang/ghc to get MODGHC_VER and ONLY_FOR_ARCHS, which is maintained
# in ghc.port.mk. lang/python needed for regress.
MODULES =		lang/ghc lang/python converters/libiconv

MULTI_PACKAGES =	-main -doc

# BSD w/o advertising clause.
# Distfile is bundled with ofther stuff like libffi, libgmp, mingw
# binaries, with BSD, GPLv2 and Perl artistic license.
PERMIT_PACKAGE_CDROM =		Yes
PERMIT_PACKAGE_FTP =		Yes
PERMIT_DISTFILES_CDROM =	Yes
PERMIT_DISTFILES_FTP =		Yes

PKG_ARCH-doc =		*
BUILD_DEPENDS =		::textproc/docbook \
			::textproc/docbook-xsl \
			::textproc/libxslt
LIB_DEPENDS-doc =
RUN_DEPENDS-doc =
RUN_DEPENDS-main =
WANTLIB-main =		c m ncurses pthread util

MASTER_SITES =		${HOMEPAGE}dist/${MODGHC_VER}/ \
			${HOMEPAGE}dist/stable/dist/
MASTER_SITES0 =		http://openbsd.dead-parrot.de/distfiles/

DIST_SUBDIR =		ghc-${MODGHC_VER}

VMEM_WARNING =		Yes

BINDISTFILE =		${BINDISTFILE-${MACHINE_ARCH}}

DISTFILES =		ghc-${MODGHC_VER}-src.tar.bz2 \
			testsuite-${MODGHC_VER}.tar.bz2 \
			${BINDISTFILE}

.for m in amd64 i386
BINDISTFILE-$m =	ghc-${BIN_VER}-$m-unknown-openbsd.tar.bz2:0
SUPDISTFILES +=		${BINDISTFILE-$m}
.endfor

USE_GMAKE =		Yes

CONFIGURE_STYLE =	gnu autoconf
AUTOCONF_VERSION =	2.61
CONFIGURE_ARGS +=	--with-iconv-includes=${LOCALBASE}/include \
			--with-iconv-libraries=${LOCALBASE}/lib

MAKE_FLAGS +=		StripLibraries=YES \
			INSTALL_BIN_OPTS=-s \
			HSCOLOUR_SRCS=NO \
			INTEGER_LIBRARY=integer-simple

BUILD_DEPENDS +=	::devel/haddock,no_deps:patch

REGRESS_DEPENDS =	::print/ghostscript/gnu

post-extract:
# - Install a precompiled binary.
# - Replace utils/haddock by the version from the ports tree, move
#   the alex- and happy-generated files into the src dir and rename the
#   corresponding sources so cabal won't try to re-run alex or happy.
	cd ${WRKDIR}/ghc-${BIN_VER} && \
	./configure --prefix=${WRKDIR} && \
	${MAKE_PROGRAM} install
	mv ${WRKSRC}/utils/haddock{,-ghcdist}
	mv ${WRKDIR}/devel/haddock/haddock-* ${WRKSRC}/utils/haddock
. for f in ghc.mk doc/ghc.mk haddock.wrapper
	cp -p ${WRKSRC}/utils/haddock{-ghcdist,}/$f
. endfor
	cd ${WRKSRC}/utils/haddock/src && \
		find . -name \*.[xy] -print | \
		sed 's@\(.*\)\.[xy]@mv & &.source \&\& mv ../dist/build/haddock/haddock-tmp/\1.hs \1.hs@' | \
		sh

post-patch:
	${SUBST_CMD} ${WRKSRC}/docs/index.html

post-install:
	cd ${PREFIX}/lib/ghc && \
	GHC_PKG="./ghc-pkg --global-conf ./package.conf.d" && \
	exec > register.sh && \
	chmod 755 register.sh && \
	echo '#!/bin/sh' && \
	echo 'exec > /dev/null 2>&1' && \
	echo 'p="$${0%/*}/ghc-pkg --global-conf $${0%/*}/package.conf.d"' && \
	for p in $$($$GHC_PKG list --simple); do \
		echo \$$p register --force - \<\< \'EOF\' && \
		$$GHC_PKG describe $$p && \
		echo EOF; \
	done && \
	exec > unregister.sh && \
	chmod 755 unregister.sh && \
	echo '#!/bin/sh' && \
	echo 'exec > /dev/null 2>&1' && \
	echo 'p="$${0%/*}/ghc-pkg --global-conf $${0%/*}/package.conf.d"' && \
	for p in $$($$GHC_PKG list --simple); do \
		echo \$$p unregister --force $$p; \
	done && \
	rm package.conf.d/* && \
	$$GHC_PKG recache

do-regress:
	ulimit -c 0 && \
	cd ${WRKSRC}/testsuite/tests/ghc-regress && \
	exec ${SETENV} ${MAKE_ENV} HS_ENCODING=utf-8 \
		${MAKE_PROGRAM} ${MAKE_FLAGS} \
		PYTHON="${MODPY_BIN}"

.include <bsd.port.mk>
