COMMENT=	GM and GS compatible SoundFont bank for MIDI

V=		2.0.1
DISTNAME=	generaluser-gs-soundfont-$V
EXTRACT_SUFX=	.zip

CATEGORIES=	audio

HOMEPAGE=	https://www.schristiancollins.com/generaluser.php

GH_ACCOUNT =	mrbumpy409
GH_PROJECT =	GeneralUser-GS
GH_COMMIT =	d0fc360abafa736f11a1fa18c721f65bfc3a6991

# see LICENSE.TXT
PERMIT_PACKAGE=	Yes

NO_BUILD=	Yes
NO_TEST=	Yes

PKG_ARCH=	*

do-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share{,/doc,/examples}/generaluser-gs
	${INSTALL_DATA} ${WRKSRC}/*.sf2 ${WRKSRC}/support/*.ins \
		${PREFIX}/share/generaluser-gs
	${INSTALL_DATA} ${WRKSRC}/documentation/* \
		${PREFIX}/share/doc/generaluser-gs
	${INSTALL_DATA} ${WRKSRC}/support/*.mid \
		${PREFIX}/share/examples/generaluser-gs

.include <bsd.port.mk>
