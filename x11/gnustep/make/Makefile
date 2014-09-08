# $OpenBSD: Makefile,v 1.37 2014/09/08 12:21:42 espie Exp $

# WARNING: this port does NOT use the x11/gnustep MODULE

PKG_ARCH=	*

COMMENT=	GNUstep makefile package
REVISION =	0

DISTNAME =	gnustep-make-2.6.6
CATEGORIES=	devel x11/gnustep

HOMEPAGE=	http://www.gnustep.org/

MASTER_SITES=	ftp://ftp.gnustep.org/pub/gnustep/core/

MODULES =	lang/clang
BUILD_DEPENDS =	x11/gnustep/libobjc2
RUN_DEPENDS=	archivers/gtar

MODCLANG_ARCHS =	amd64 i386
MODCLANG_LANGS =	c++

USE_GMAKE=	Yes
USE_GROFF =	Yes
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
		--with-library-combo="gnu-gnu-gnu" \
		--with-objc-lib-flag=-lobjc2 \
		--enable-strict-v2-mode

.if ${MACHINE_ARCH} == "amd64" || ${MACHINE_ARCH} == "i386"
CONFIGURE_ENV +=	CXX=clang++ CC=clang AS=llvm-as CPP="clang -E"
CONFIGURE_ARGS +=	--enable-objc-nonfragile-abi
.endif

pre-configure:
	${SUBST_CMD} -c ${FILESDIR}/openbsd \
		${WRKSRC}/FilesystemLayouts/openbsd

post-install:
	${INSTALL_DATA} ${WRKSRC}/{GNUstep.conf,installation-domains.conf} \
		${PREFIX}/share/GNUstep/

.include <bsd.port.mk>
