# $OpenBSD: Makefile,v 1.3 2015/06/11 15:00:00 sthen Exp $

COMMENT=	GM and GS compatible SoundFont bank for MIDI

V=		1.44
REVISION=	0
PKGNAME=	generaluser-gs-soundfont-$V
DISTNAME=	GeneralUser_GS_$V-FluidSynth
EXTRACT_SUFX=	.zip

CATEGORIES=	audio

HOMEPAGE=	http://www.schristiancollins.com/generaluser.php

MAINTAINER=	Stuart Henderson <sthen@openbsd.org>

# see LICENSE.TXT
PERMIT_PACKAGE_CDROM=	probably OK, but disabled on CDs for safety
PERMIT_PACKAGE_FTP=	Yes

MASTER_SITES=	http://www.schristiancollins.com/soundfonts/ \
		http://spacehopper.org/mirrors/

NO_BUILD=	Yes
NO_TEST=	Yes

PKG_ARCH=	*
WRKDIST=	${WRKDIR}/generaluser-gs
INST=		${PREFIX}/share/generaluser-gs

post-extract:
	cd ${WRKDIR}; ln -s GeneralUser*FluidSynth generaluser-gs

do-install:
	${INSTALL_DATA_DIR} ${INST} ${PREFIX}/share/{doc,examples}/generaluser-gs
	${INSTALL_DATA} ${WRKSRC}/GUTest.mid ${PREFIX}/share/examples/generaluser-gs/
	${INSTALL_DATA} ${WRKSRC}/GeneralUser*.sf2 ${INST}/GeneralUser_GS.sf2
	${INSTALL_DATA} ${WRKSRC}/*txt ${PREFIX}/share/doc/generaluser-gs
	cd "${WRKSRC}/instrument lists"; \
	    ${INSTALL_DATA} "GeneralUser GS 1.43.ins" ${PREFIX}/share/generaluser-gs/GeneralUser_GS.ins; \
	    ${INSTALL_DATA} "GeneralUser GS 1.43-Drumsets.ins" ${PREFIX}/share/generaluser-gs/GeneralUser_GS-Drumsets.ins; \
	    ${INSTALL_DATA} "GeneralUser_GS_1.43.rgd" ${PREFIX}/share/generaluser-gs/GeneralUser_GS.rgd; \
	    ${INSTALL_DATA} "GU1.43 Percussion Map.pdf" ${PREFIX}/share/doc/generaluser-gs/GU_Percussion_Map.pdf

.include <bsd.port.mk>
