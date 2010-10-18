
# $OpenBSD: Makefile,v 1.6 2010/10/18 19:20:42 espie Exp $

# not yet ported to other arches
ONLY_FOR_ARCHS =	amd64 i386 powerpc

COMMENT=		compiler and runtime system for ANSI Common Lisp

V =			1.0.41
DISTNAME=		sbcl-${V}-source
PKGNAME=		sbcl-${V}
REVISION =		0
WRKDIST=		${WRKDIR}/sbcl-${V}
EXTRACT_SUFX=		.tar.bz2

CATEGORIES=		lang
HOMEPAGE=		http://www.sbcl.org/
MAINTAINER =		Joshua Elsasser <joshe@openbsd.org>

# Public domain and BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m util

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sbcl/}

PSEUDO_FLAVORS=		native_bootstrap
FLAVOR?=

BUILD_DEPENDS=		::print/texlive/base
USE_GROFF =	Yes

.if ${FLAVOR:L:Mnative_bootstrap}
BUILD_DEPENDS+=		::lang/sbcl
BOOTSTRAP_CMD=		${LOCALBASE}/bin/sbcl \
			--disable-debugger --no-sysinit --no-userinit
.else
BUILD_DEPENDS +=	::lang/clisp
BOOTSTRAP_CMD =		${LOCALBASE}/bin/clisp -q -norc
.endif

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
			MAN_DIR=${PREFIX}/man INFO_DIR=${PREFIX}/info

pre-configure:
	@${SUBST_CMD} ${WRKSRC}/src/runtime/runtime.c

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} /bin/sh make.sh "${BOOTSTRAP_CMD}"
	cd ${WRKSRC}/doc/manual && ${SETENV} ${MAKE_ENV} ${GMAKE}

do-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} /bin/sh install.sh

post-install:
	${CHOWN} -R 0:0 ${PREFIX}/lib/sbcl

do-regress:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} RUN_CONTRIB_TESTS=1 \
	    /bin/sh make-target-contrib.sh
	cd ${WRKSRC}/tests && ${SETENV} ${MAKE_ENV} /bin/sh run-tests.sh

.include <bsd.port.mk>
