COMMENT =	video stabilization library

V = 		1.1.0

DISTNAME = 	libvidstab-$V

SHARED_LIBS +=  vidstab                   0.0 # 1.1
CATEGORIES = 	multimedia

GH_ACCOUNT = 	georgmartius
GH_PROJECT = 	vid.stab
GH_TAGNAME = 	v$V

# GPLv2+
PERMIT_PACKAGE = Yes

WANTLIB += m

MODULES = 	devel/cmake

CONFIGURE_ARGS = -DUSE_OMP=No

# XXX The SSE detection at CMakeModules/FindSSE.cmake does not work properly on
# OpenBSD. SSE2 was enabled all the time on all archs. Disable SSE for !amd64,
# amd64 can still use SSE2.
.if ${MACHINE_ARCH} != "amd64"
CONFIGURE_ARGS +=	-DSSE2_FOUND=OFF -DSSE3_FOUND=OFF \
			-DSSSE3_FOUND=OFF
.endif
# And yet, some old amd64 machines have no SSE4.1
CONFIGURE_ARGS +=	-DSSE4_1_FOUND=OFF

# seems tests require a full extra configuration pass
NO_TEST =	Yes
WRKDIST = 	${WRKDIR}/vid.stab-$V

DOCDIR =	${PREFIX}/share/doc/libvidstab
SUBST_VARS += DOCDIR


post-install:
	${INSTALL_DATA_DIR} ${DOCDIR}
	${INSTALL_DATA} ${WRKDIST}/README.md ${DOCDIR}

.include <bsd.port.mk>
