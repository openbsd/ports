# $OpenBSD: Makefile,v 1.2 2020/06/16 23:23:05 sthen Exp $

BROKEN-i386 =	some problem where ReusableLogger init tries to initialize zlib

COMMENT =	build platform for .NET and Visual Studio

# major from MSBuild version; gleaned from FreeBSD's port
MSBUILD_V =	15.8pre0
# the version as labeled by mono
MONO_MSBUILD_V =	0.06
# hash from GitHub commit; used for the additional mono package for the build
GH_HASH =	3c930fa8

DISTNAME =	msbuild-${MSBUILD_V}

GH_ACCOUNT =	mono
GH_PROJECT =	msbuild
GH_TAGNAME =	0.06

CATEGORIES =	devel
HOMEPAGE =	https://docs.microsoft.com/en-us/visualstudio/msbuild/msbuild
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# MIT
PERMIT_PACKAGE =	Yes

MASTER_SITES0 =	https://github.com/mono/msbuild/releases/download/${MONO_MSBUILD_V}/
MASTER_SITES1 =	https://mirrors.nycbug.org/pub/distfiles/
DISTFILES =	${DISTNAME}{${GH_COMMIT}}${EXTRACT_SUFX} \
		mono_msbuild_xplat-master-${GH_HASH}.zip:0 \
		msbuild-nuget-packages-${MONO_MSBUILD_V}.tar.xz:1
MODULES =	lang/mono
BUILD_DEPENDS =	shells/bash

# Without GIT_COMMIT, build breaks because of empty $(GitHeadSha)
MAKE_ENV =	NUGET_PACKAGES=${WRKSRC}/packages \
		GIT_COMMIT=3c930fa8721935cf0e381fd349f6f50cf2bc223d
# pass a different $HOME so that the build's NuGet doesn't try to write in $HOME
MAKE_FLAGS =	HOME=${WRKSRC}/nugethome

ALL_TARGET =	all-mono
# test freezes during Microsoft.Build.Engine.UnitTests_net461_x86
TEST_TARGET =	test-mono

post-extract:
	mkdir -p ${WRKSRC}/artifacts ${WRKSRC}/nugethome/.nuget
	ln -s ${WRKDIR}/msbuild ${WRKSRC}/artifacts/mono-msbuild
	find ${WRKSRC} -type f -exec \
		sed -i -e 's,/bin/bash,/usr/bin/env bash,g' {} \;
	find ${WRKDIR}/msbuild -type f -exec \
		sed -i -e 's,/bin/bash,/usr/bin/env bash,g' {} \;
	ln -s ${WRKDIR}/msbuild-nuget-packages-${MONO_MSBUILD_V} \
		${WRKSRC}/packages

do-gen:
	${SUBST_CMD} ${WRKSRC}/mono/build/install.proj

# installation of Roslyn/* follows the comments in ${WRKSRC}/mono/README.md
do-install:
	cd ${WRKSRC}; \
	${SETENV} ${MAKE_ENV} DESTDIR=${WRKINST} \
		PATH=${WRKSRC}/artifacts/mono-msbuild:$$PATH \
		./install-mono-prefix.sh ${PREFIX}
	${INSTALL_DATA_DIR} ${PREFIX}/lib/mono/msbuild/15.0/bin/Roslyn
	${INSTALL_DATA} ${WRKDIR}/msbuild/Roslyn/* \
		${PREFIX}/lib/mono/msbuild/15.0/bin/Roslyn/

.include <bsd.port.mk>
