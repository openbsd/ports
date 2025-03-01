COMMENT =	command-line interface for Cabal and Hackage

DISTNAME =	cabal-install-3.14.1.1
CATEGORIES =	devel
GH_ACCOUNT =	haskell
GH_TAGNAME =	cabal-install-v3.14.1.1
GH_PROJECT =	cabal

HOMEPAGE =	https://github.com/haskell/cabal

MAINTAINER =	Matthias Kilian <kili@openbsd.org>

# BSD3
PERMIT_PACKAGE =		Yes

WANTLIB =		c charset ffi gmp iconv m pthread util z

LIB_DEPENDS =		converters/libiconv \
			devel/gmp \
			devel/libffi

RUN_DEPENDS =		lang/ghc

# bootstrap.py handles the extraction of the rest of files.
EXTRACT_ONLY =		${DISTNAME}.tar.gz
DISTFILES =		${EXTRACT_ONLY}
DIST_SUBDIR =		hackage
SITES.hs =		https://hackage.haskell.org/package/

# import json
# deps = json.load(open("files/openbsd.json"))["dependencies"]
# for d in sorted(deps, key=lambda p: p['package']):
#     print(f"\t{d['package']}\t{d['version']}\t{d['revision'] or 0}\t\\")
_MANIFEST = \
	HTTP	4000.4.1	5	\
	alex	3.5.1.0	0	\
	async	2.2.5	3	\
	base16-bytestring	1.0.2.0	1	\
	base64-bytestring	1.2.1.0	1	\
	cryptohash-sha256	0.11.102.1	6	\
	directory	1.3.9.0	1	\
	echo	0.1.4	0	\
	ed25519	0.0.5.0	8	\
	edit-distance	0.2.2.1	1	\
	file-io	0.1.4	0	\
	filepath	1.5.4.0	0	\
	hackage-security	0.6.2.6	5	\
	hashable	1.5.0.0	1	\
	hsc2hs	0.68.10	3	\
	lukko	0.1.2	1	\
	network	3.2.6.0	0	\
	network-uri	2.6.4.2	1	\
	open-browser	0.2.1.0	0	\
	os-string	2.0.7	0	\
	process	1.6.25.0	1	\
	random	1.2.1.2	0	\
	regex-base	0.94.0.2	4	\
	regex-posix	0.96.0.1	3	\
	resolv	0.2.0.2	4	\
	safe-exceptions	0.1.7.4	1	\
	semaphore-compat	1.0.0	3	\
	splitmix	0.1.0.5	1	\
	tar	0.6.3.0	1	\
	th-compat	0.1.5	2	\
	unix	2.8.6.0	1	\
	zlib	0.7.1.0	2	\

.for _package _version _revision in ${_MANIFEST}
DISTFILES.hs += {${_package}-${_version}/}${_package}-${_version}.tar.gz
DISTFILES.hs += ${_package}-${_version}_${_revision}{${_package}-${_version}/revision/${_revision}}.cabal
.endfor

BUILD_DEPENDS +=	lang/ghc>=9.8.3

MODULES =		lang/python

post-extract:
	@mkdir -p ${WRKBUILD}/_build/tarballs
.for _package _version _revision in ${_MANIFEST}
	@ln -s ${FULLDISTDIR}/${_package}-${_version}.tar.gz ${WRKBUILD}/_build/tarballs
	@ln -s ${FULLDISTDIR}/${_package}-${_version}_${_revision}.cabal ${WRKBUILD}/_build/tarballs/${_package}.cabal
.endfor

do-build:
	@cd ${WRKBUILD} && \
	${MODPY_BIN} bootstrap/bootstrap.py -d ${FILESDIR}/openbsd.json --no-archive

do-install:
	@install -m755 ${WRKBUILD}/_build/bin/cabal ${PREFIX}/bin
	${PREFIX}/bin/cabal man --raw > ${WRKSRC}/cabal.1
	${INSTALL_MAN} ${WRKSRC}/cabal.1 ${PREFIX}/man/man1/cabal.1

.include <bsd.port.mk>
