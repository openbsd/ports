# $OpenBSD: Makefile,v 1.2 2008/04/15 12:07:31 deanna Exp $

# not yet ported to other arches
ONLY_FOR_ARCHS=		i386

COMMENT=		compiler and runtime system for ANSI Common Lisp

V=			1.0.15
DISTNAME=		sbcl-${V}-source
PKGNAME=		sbcl-${V}
WRKDIST=		${WRKDIR}/sbcl-${V}
EXTRACT_SUFX=		.tar.bz2

CATEGORIES=		lang
HOMEPAGE=		http://www.sbcl.org/
MAINTAINER=		Josh Elsasser <josh@elsasser.org>

# Public domain and BSD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB=		c m util

MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=sbcl/}
MASTER_SITES0=		http://www.elsasser.org/openbsd/
DISTFILES=		${DISTNAME}${EXTRACT_SUFX}
SUPDISTFILES=		${SBCL_BOOTSTRAP_I386}.tar.bz2:0

SBCL_BOOTSTRAP_I386=	sbcl-1.0.14-openbsd-i386-static-1
SBCL_BOOTSTRAP=		${SBCL_BOOTSTRAP_${MACHINE_ARCH:U}}

# To build a new bootstrap tarball, do "make patch" then edit the
# following files:
#     ${WRKSRC}/make.sh
#         comment out "time sh make-target-contrib.sh" near the end
#     ${WRKSRC}/src/runtime/Config.x86-openbsd
#         change the -export-dynamic flags to -static
# You should also edit the do-build target in this Makefile, comment
# out the second line to avoid trying to build the manual. Finally, do
# "make build" and go get some coffee. When it's finished you can grab
# ${WRKSRC}/src/runtime/sbcl and ${WRKSRC}/output/sbcl.core to make
# the bootstrap tarball.

PSEUDO_FLAVORS=		native_bootstrap
FLAVOR?=

BUILD_DEPENDS=		::print/texlive/base

# it's not actually interactive, it just needs /proc and higher resource limits
REGRESS_IS_INTERACTIVE=Yes

.if ${FLAVOR:L:Mnative_bootstrap}
BUILD_DEPENDS+=		::lang/sbcl
BOOTSTRAP_CMD=		${LOCALBASE}/bin/sbcl \
			--disable-debugger --no-sysinit --no-userinit
.elif !empty(SBCL_BOOTSTRAP)
DISTFILES+=		${SBCL_BOOTSTRAP}.tar.bz2:0
BOOTSTRAP_CMD=		${WRKDIR}/${SBCL_BOOTSTRAP}/sbcl \
			--core ${WRKDIR}/${SBCL_BOOTSTRAP}/sbcl.core \
			--disable-debugger --no-sysinit --no-userinit
.endif

USE_GMAKE=		Yes
PORTHOME=		${TMPDIR}
MAKE_ENV=		GNUMAKE=${GMAKE} INSTALL_ROOT=${PREFIX} \
			MAN_DIR=${PREFIX}/man INFO_DIR=${PREFIX}/info

do-build:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} /bin/sh make.sh "${BOOTSTRAP_CMD}"
	cd ${WRKSRC}/doc/manual && ${SETENV} ${MAKE_ENV} ${GMAKE}

do-install:
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} /bin/sh install.sh

post-install:
	${CHOWN} -R 0:0 ${PREFIX}/lib/sbcl

do-regress:
	@echo "These tests must be run with a data size resource limit of at least"
	@echo "768 MB, for example by a user in the staff or daemon login classes."
	@echo
	@echo "The /proc filesystem must also be mounted for the core.test.sh test:"
	@echo "  mkdir -p /proc && mount -t procfs proc /proc"
	@echo
	@sleep 5
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} RUN_CONTRIB_TESTS=1 \
	    /bin/sh make-target-contrib.sh
	cd ${WRKSRC}/tests && ${SETENV} ${MAKE_ENV} /bin/sh run-tests.sh

.include <bsd.port.mk>
