COMMENT =	command-line interface for Cabal and Hackage

DISTNAME =	cabal-install-3.6.2.0
CATEGORIES =	devel
GH_ACCOUNT =	haskell
GH_TAGNAME =	Cabal-v3.6.2.0
GH_PROJECT =	cabal

HOMEPAGE =	https://github.com/haskell/cabal

MAINTAINER =	Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =		Yes

WANTLIB =		c charset ffi gmp iconv m pthread util z

MODGHC_BUILD =          cabal hackage nort

LIB_DEPENDS =		converters/libiconv \
			devel/gmp \
			devel/libffi

RUN_DEPENDS =		lang/ghc

# bootstrap.py handles the extraction of the rest of files.
EXTRACT_ONLY =		${DISTNAME}.tar.gz
DISTFILES =		${EXTRACT_ONLY}
DIST_SUBDIR =		hackage
MASTER_SITES0 =		https://hackage.haskell.org/package/

# Produced by manually copying values out of files/openbsd.json.
_MANIFEST = \
	HTTP	4000.3.16	1	\
	async	2.2.4	1	\
	base16-bytestring	1.0.2.0	0	\
	base64-bytestring	1.2.1.0	0	\
	cryptohash-sha256	0.11.102.1 0	\
	echo	0.1.4	0	\
	ed25519	0.0.5.0	3	\
	edit-distance	0.2.2.1	1	\
	hackage-security	0.6.0.1	8	\
	hashable	1.3.5.0	0	\
	lukko	0.1.1.3	1	\
	network	3.1.2.5	0	\
	network-uri	2.6.4.1	0	\
	random	1.2.1	0	\
	regex-base	0.94.0.2	0	\
	regex-posix	0.96.0.1	0	\
	resolv	0.1.2.0	3	\
	splitmix	0.1.0.4	0	\
	th-compat	0.1.3 0	\
	tar	0.5.1.1	4	\
	zlib	0.6.2.3	1	\

.for _package _version _revision in ${_MANIFEST}
DISTFILES += {${_package}-${_version}/}${_package}-${_version}.tar.gz:0
DISTFILES += ${_package}-${_version}_${_revision}{${_package}-${_version}/revision/${_revision}}.cabal:0
.endfor

BUILD_DEPENDS +=	lang/ghc>=8.10.6

MODULES =		lang/python

post-extract:
	@mkdir -p ${WRKBUILD}/_build/tarballs
.for _package _version _revision in ${_MANIFEST}
	@ln -s ${FULLDISTDIR}/${_package}-${_version}.tar.gz ${WRKBUILD}/_build/tarballs
	@ln -s ${FULLDISTDIR}/${_package}-${_version}_${_revision}.cabal ${WRKBUILD}/_build/tarballs/${_package}.cabal
.endfor

do-build:
	@cd ${WRKBUILD} && ${MODPY_BIN} bootstrap/bootstrap.py -d ${FILESDIR}/openbsd.json

do-install:
	@install -m755 ${WRKBUILD}/_build/bin/cabal ${PREFIX}/bin
	${PREFIX}/bin/cabal man --raw > ${WRKSRC}/cabal.1
	${INSTALL_MAN} ${WRKSRC}/cabal.1 ${PREFIX}/man/man1/cabal.1

.include <bsd.port.mk>
