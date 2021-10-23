# $OpenBSD: Makefile,v 1.9 2021/10/05 07:02:44 thfr Exp $

V =		21.10
COMMENT =	XNA4 reimplementation for open platforms
DISTNAME =	fna-${V:S/.//g}
PKGNAME =	fna-${V}
CATEGORIES =	games
HOMEPAGE =	https://fna-xna.github.io/
MAINTAINER =	Thomas Frohwein <thfr@openbsd.org>

# MS-PL, includes lzxdecoder (dual MSPL/LGPL) and Mono.Xna (MIT)
# zlib (Vorbisfile-CS)
PERMIT_PACKAGE =	Yes

NETSTUB =	ebff244074bb3c28aeeb8cf7b383b5a029d7e28d
VORBISFILE =	521c8532f03b3608a141b36d7c1343e816b46cb1

MASTER_SITES =	https://github.com/FNA-XNA/FNA/releases/download/${V}/
MASTER_SITES0 =	https://github.com/FNA-XNA/FNA.NetStub/archive/
MASTER_SITES1 =	https://github.com/flibitijibibo/Vorbisfile-CS/archive/

DISTFILES =	${DISTNAME}${EXTRACT_SUFX} \
		${NETSTUB}.tar.gz:0 \
		${VORBISFILE}.tar.gz:1

DIST_SUBDIR =	fna-${V}

EXTRACT_SUFX =	.zip
MODULES =	lang/mono
RUN_DEPENDS =	audio/faudio \
		devel/sdl2-image \
		graphics/fna3d \
		graphics/mojoshader
WRKDIST =	${WRKDIR}/FNA
NO_TEST =	Yes
ALL_TARGET =	release
SUBST_VARS +=	VORBISFILE

post-extract:
	ln -sf ${WRKDIR}/FNA.NetStub-${NETSTUB} ${WRKDIR}/FNA.NetStub

do-gen:
	cp ${FILESDIR}/FNA.Settings.props ${WRKSRC}/
	${SUBST_CMD} ${WRKSRC}/FNA.Settings.props

# need to rm bin,obj before FNA.sln to build with FNA.Settings.props
do-build:
	xbuild /p:Configuration=Release ${WRKSRC}/abi/Microsoft.Xna.Framework.sln
	rm -rf ${WRKBUILD}/{bin,obj}
	xbuild /p:Configuration=Release ${WRKSRC}/FNA.sln

do-install:
	mkdir -p ${PREFIX}/share/FNA
	${INSTALL_DATA} ${WRKBUILD}/bin/Release/FNA.dll ${PREFIX}/share/FNA/
	${INSTALL_DATA} \
		${WRKBUILD}/abi/bin/Release/FNA.NetStub.dll \
		${WRKBUILD}/abi/bin/Release/Microsoft.Xna.Framework.Game.dll \
		${WRKBUILD}/abi/bin/Release/Microsoft.Xna.Framework.GamerServices.dll \
		${WRKBUILD}/abi/bin/Release/Microsoft.Xna.Framework.Graphics.dll \
		${WRKBUILD}/abi/bin/Release/Microsoft.Xna.Framework.Input.Touch.dll \
		${WRKBUILD}/abi/bin/Release/Microsoft.Xna.Framework.Net.dll \
		${WRKBUILD}/abi/bin/Release/Microsoft.Xna.Framework.Storage.dll \
		${WRKBUILD}/abi/bin/Release/Microsoft.Xna.Framework.Video.dll \
		${WRKBUILD}/abi/bin/Release/Microsoft.Xna.Framework.Xact.dll \
		${WRKBUILD}/abi/bin/Release/Microsoft.Xna.Framework.dll \
		${PREFIX}/share/FNA/
	${INSTALL_DATA} ${FILESDIR}/FNA.dll.config ${PREFIX}/share/FNA/

.include <bsd.port.mk>
