# $OpenBSD: Makefile,v 1.8 2006/02/03 19:42:44 steven Exp $

COMMENT=	"general multi-lingual speech synthesis system"
V=		1.95
DISTNAME=	festival-${V}-beta
PKGNAME=	${DISTNAME:S/-beta/beta/}p1
CATEGORIES=	audio
MASTER_SITES=	http://www.cstr.ed.ac.uk/downloads/festival/${V}/ \
		http://festvox.org/packed/festival/${V}/
MASTER_SITES0=  http://mirrors.protection.cx/~jolan/
DIST_SUBDIR=	festival
DISTFILES=	${DISTNAME}.tar.gz speech_tools-1.2.95-beta.tar.gz
SUPDISTFILES=	OGIresLPC-2.0.9.tar.gz:0

HOMEPAGE=	http://www.cstr.ed.ac.uk/projects/festival/

WRKDIST=	${WRKDIR}

USE_GMAKE=	Yes

SPEECH=		${WRKSRC}/speech_tools
FESTIVAL=	${WRKSRC}/festival

MAKE_ENV+=	CC="${CC}" \
		CXX="${CXX}" \
		CFLAGS="${CFLAGS}" \
		CXXFLAGS="${CXXFLAGS}" \
		PKG_EST_HOME="${SPEECH}" \
		EST_HOME="${SPEECH}" \
		FESTIVAL_BUILD_HOME="${FESTIVAL}" \
		FTLIBDIRC="${PREFIX}/lib/festival"

CONFIGURE_STYLE=gnu
MODGNU_CONFIG_GUESS_DIRS=${SPEECH} ${FESTIVAL}

EXAMPLEDIR=	${PREFIX}/share/examples/festival
SHAREDIR=	${PREFIX}/lib/festival

FLAVORS=	ogi
FLAVOR?=

.if ${FLAVOR:L:Mogi}
DISTFILES+=	OGIresLPC-2.0.9.tar.gz:0
PATCH_LIST=	ogi-* patch-*
PERMIT_DISTFILES_CDROM=	"no fee"
PERMIT_PACKAGE_CDROM=	"no fee"
.endif

# BSD-like
PERMIT_DISTFILES_CDROM?=Yes
PERMIT_DISTFILES_FTP=	Yes
PERMIT_PACKAGE_CDROM?=	Yes
PERMIT_PACKAGE_FTP=	Yes
WANTLIB=		c m ossaudio stdc++ termcap

post-patch:
	@cp ${FILESDIR}/OpenBSD.mak ${WRKSRC}/speech_tools/config/systems/OpenBSD.mak
	@cp ${FILESDIR}/Makefile ${WRKSRC}

do-configure:
	@cd ${FESTIVAL} && ${SETENV} ${CONFIGURE_ENV} ./configure ${CONFIGURE_ARGS}
	@cd ${SPEECH} && ${SETENV} ${CONFIGURE_ENV} ./configure ${CONFIGURE_ARGS}
.if ${FLAVOR:L:Mogi}
	@printf "ALSO_INCLUDE += OGIcommon\nALSO_INCLUDE += OGIdbase\nALSO_INCLUDE += OGIresLPC\n" >> ${FESTIVAL}/config/config
.endif

post-build:
	@perl -pi -e s,'/bin/festival','${PREFIX}/bin/festival', ${WRKBUILD}/festival/bin/text2wave

do-install:
.if ${FLAVOR:L:Mogi}
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/festival-ogi
	${INSTALL_DATA} ${WRKDIR}/{README-OGIresLPC-2.0,license_ogi_tts.txt} \
		${PREFIX}/share/doc/festival-ogi
.endif
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}
	${INSTALL_DATA_DIR} ${EXAMPLEDIR}/songs
	${INSTALL_DATA_DIR} ${SHAREDIR}/multisyn
.for EXT in dtd el ent gram ngrambin properties scm
	${INSTALL_DATA} ${WRKSRC}/festival/lib/*.${EXT} ${SHAREDIR}
.endfor
	${INSTALL_DATA} ${WRKSRC}/festival/lib/multisyn/*.scm \
		${SHAREDIR}/multisyn
	${INSTALL_PROGRAM} ${FESTIVAL}/lib/etc/OpenBSD/audsp ${PREFIX}/bin
	${INSTALL_PROGRAM} ${FESTIVAL}/src/main/festival ${PREFIX}/bin
	${INSTALL_PROGRAM} ${FESTIVAL}/src/main/festival_client ${PREFIX}/bin
	${INSTALL_SCRIPT} ${FESTIVAL}/bin/festival_server ${PREFIX}/bin
	${INSTALL_SCRIPT} ${FESTIVAL}/bin/festival_server_control ${PREFIX}/bin
	${INSTALL_SCRIPT} ${FESTIVAL}/bin/text2wave ${PREFIX}/bin
	${INSTALL_MAN} ${FESTIVAL}/doc/festival.1 ${PREFIX}/man/man1/festival.1
	${INSTALL_MAN} ${FESTIVAL}/doc/festival_client.1 ${PREFIX}/man/man1/festival_client.1
.for EXT in dtd scm stml tar text
	${INSTALL_DATA} ${FESTIVAL}/examples/*.${EXT} ${EXAMPLEDIR}
.endfor
	${INSTALL_DATA} ${FESTIVAL}/examples/ex1.* ${EXAMPLEDIR}
	${INSTALL_DATA} ${FESTIVAL}/examples/example* ${EXAMPLEDIR}
	${INSTALL_DATA} ${FESTIVAL}/examples/festival_client.* ${EXAMPLEDIR}
	${INSTALL_SCRIPT} ${FESTIVAL}/examples/{dumpfeats,durmeanstd,latest,make_utts,saytime,scfg_parse_text,text2pos,text2wave} ${EXAMPLEDIR}
	${INSTALL_DATA} ${FESTIVAL}/examples/songs/*.xml ${EXAMPLEDIR}/songs

.include <bsd.port.mk>
