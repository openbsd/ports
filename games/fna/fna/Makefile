COMMENT =	XNA4 reimplementation for open platforms
PKGNAME =	fna-${V}
REVISION =	0

# MS-PL, includes lzxdecoder (dual MSPL/LGPL) and Mono.Xna (MIT)
PERMIT_PACKAGE = Yes

DIST_TUPLE += 	github FNA-XNA FNA.NetStub ebff244074bb3c28aeeb8cf7b383b5a029d7e28d \
		../FNA.NetStub # Ms-PL
DIST_TUPLE += 	github flibitijibibo Vorbisfile-CS \
		521c8532f03b3608a141b36d7c1343e816b46cb1 Vorbisfile-CS # zlib

MODULES =	lang/mono
RUN_DEPENDS =	devel/sdl2-image \
		games/fna/faudio \
		games/fna/fna3d
WRKDIST =	${WRKDIR}/FNA
NO_TEST =	Yes
ALL_TARGET =	release

do-gen:
	cp ${FILESDIR}/FNA.Settings.props ${WRKSRC}/

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
