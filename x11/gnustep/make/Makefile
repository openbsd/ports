# $OpenBSD: Makefile,v 1.57 2020/06/09 21:07:05 sebastia Exp $

# WARNING: this port does NOT use the x11/gnustep MODULE

COMMENT=	GNUstep makefile package

DISTNAME =	gnustep-make-2.8.0
CATEGORIES=	devel x11/gnustep

HOMEPAGE=	http://www.gnustep.org/

MASTER_SITES=	http://ftp.gnustep.org/pub/gnustep/core/

BUILD_DEPENDS =	x11/gnustep/libobjc2
RUN_DEPENDS=	archivers/gtar

COMPILER =	base-clang ports-clang
MODCLANG_ARCHS =	amd64 i386

USE_GMAKE=	Yes
MAKE_FILE=	GNUmakefile

CONFIGURE_STYLE=gnu
CONFIGURE_ENV =	ac_cv_prog_LATEX2HTML="" \
		INSTALL="install -c" \
		INSTALL_PROGRAM="install -c -m 555" \
		INSTALL_DATA="install -c -m 444" \
		CPPFLAGS='-I${LOCALBASE}/include/gnustep'
CONFIGURE_ARGS=	--with-layout=openbsd \
		--prefix=${PREFIX} \
		--with-config-file=${SYSCONFDIR}/GNUstep.conf \
		--with-tar=${LOCALBASE}/bin/gtar \
		--enable-multi-platform \
		--with-library-combo="${LIBRARY_COMBO}" \
		--with-objc-lib-flag=-lobjc2 \
		--enable-strict-v2-mode

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
WANTLIB =	${COMPILER_LIBCXX}
LIBRARY_COMBO =		"ng-gnu-gnu"
CONFIGURE_ENV +=	GS_WITH_ARC=1 AS=llvm-as
.else
WANTLIB =	${COMPILER_LIBCXX}
LIBRARY_COMBO =		"gnu-gnu-gnu"
.endif

pre-configure:
	${SUBST_CMD} -c -m 444 ${FILESDIR}/openbsd \
		${WRKSRC}/FilesystemLayouts/openbsd

post-install:
	${INSTALL_DATA} ${WRKSRC}/{GNUstep.conf,installation-domains.conf} \
		${PREFIX}/share/GNUstep/

.include <bsd.port.mk>
.if ${PROPERTIES:Mclang}
PATCH_LIST = patch-* clangpatch-*
.endif
