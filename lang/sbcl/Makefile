# $OpenBSD: Makefile,v 1.21 2013/10/22 19:44:15 jca Exp $

# not yet ported to other arches
ONLY_FOR_ARCHS =	amd64 i386 powerpc

COMMENT=		compiler and runtime system for ANSI Common Lisp

V =			1.1.12
DISTNAME=		sbcl-${V}-source
PKGNAME=		sbcl-${V}
WRKDIST=		${WRKDIR}/sbcl-${V}
EXTRACT_SUFX=		.tar.bz2

CATEGORIES=		lang
HOMEPAGE=		http://www.sbcl.org/
MAINTAINER =		Joshua Elsasser <joshe@openbsd.org>

# Public domain and BSD
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB=		c m util

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sbcl/}

PSEUDO_FLAVORS=		native_bootstrap
FLAVOR?=

USE_GROFF =		Yes

.if ${FLAVOR:Mnative_bootstrap}
BUILD_DEPENDS+=		lang/sbcl
BOOTSTRAP_CMD=		${LOCALBASE}/bin/sbcl \
			--disable-debugger --no-sysinit --no-userinit
.else
BUILD_DEPENDS +=	lang/clisp
BOOTSTRAP_CMD =		${LOCALBASE}/bin/clisp -q -norc
.endif
TEST_DEPENDS =		devel/gmp

.for arch in amd64 i386 powerpc
. if ${MACHINE_ARCH} == ${arch}
PKG_ARGS +=		-D${arch}=1
. else
PKG_ARGS +=		-D${arch}=0
. endif
.endfor

USE_GMAKE=		Yes
PORTHOME=		${TMPDIR}
MAKE_ENV=		GNUMAKE=${GMAKE} INSTALL_ROOT=${PREFIX} \
			MAN_DIR=${PREFIX}/man INFO_DIR=${PREFIX}/info \
			LINKFLAGS="-nopie" LDFLAGS="-nopie"
CFLAGS +=		-fno-pie

# Upstream asks that packagers append something like this to the
# version to distinguish official tarballs from third-party packages.
.if defined(REVISION) && !empty(REVISION)
LOCAL_VERSION =		openbsd.${REVISION}
.else
LOCAL_VERSION =		openbsd
.endif
VERSION_FILE =		${WRKSRC}/version.lisp-expr

pre-configure:
	sed 's/^"\([0-9.]*\)"$$/"\1.${LOCAL_VERSION}"/' \
		< ${VERSION_FILE} > ${VERSION_FILE}.new
	mv ${VERSION_FILE}.new ${VERSION_FILE}

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} /bin/sh make.sh \
		--prefix=${PREFIX} --xc-host="${BOOTSTRAP_CMD}"
	cd ${WRKSRC}/doc/manual && touch sbcl.texinfo && \
		${SETENV} ${MAKE_ENV} ${GMAKE} asdf.info sbcl.info html

do-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} /bin/sh install.sh

post-install:
	chown -R 0:0 ${PREFIX}/lib/sbcl

do-test:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} RUN_CONTRIB_TESTS=1 \
	    /bin/sh make-target-contrib.sh
	cd ${WRKSRC}/tests && ${SETENV} ${MAKE_ENV} /bin/sh run-tests.sh

.include <bsd.port.mk>
