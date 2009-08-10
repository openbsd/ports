# $OpenBSD: Makefile,v 1.19 2009/08/10 17:31:07 kili Exp $

COMMENT-main=		programming language with generators, X11 and more
COMMENT-main-no_x11=	programming language with generators
COMMENT-compiler=	icon compiler

VERSION=	9.4.3
DISTNAME=	icon.v943src
CATEGORIES=	lang
MASTER_SITES= 	http://www.cs.arizona.edu/icon/ftp/packages/unix/
#DIST_SUBDIR=	icon/${VERSION}
DISTFILES=	icon.v943src.tgz

MULTI_PACKAGES=		-main -compiler

PKGNAME-main=		icon-interp-${VERSION}p2
PKGNAME-compiler= 	icon-compiler-${VERSION}

# Public domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=	http://www.cs.arizona.edu/icon/

MAINTAINER=	Marc Espie <espie@openbsd.org>

#WRKDIST=	${WRKDIR}

FLAVORS=	no_x11
FLAVOR?=	

MAKE_ENV=	ARCH="${MACHINE_ARCH}"
CONF_DIR=	${WRKSRC}/config/unix/openbsd
ALL_TARGET=	Icont Iconc

LIBDIR=${TRUEPREFIX}/lib/icon

WANTLIB-compiler=	c
WANTLIB-main=		c m pthread

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_TARGET=	Configure
.else
CONFIGURE_TARGET=	X-Configure
WANTLIB-main+=		X11 Xpm pthread-stubs xcb
USE_X11=Yes
.endif

do-configure:
	cd ${WRKSRC} && ${MAKE} ${CONFIGURE_TARGET} name=bsd

post-build:
	if [ x${NO_SHARED_LIBS:L} != "yes" ]; then \
	    cd ${WRKSRC}/ipl/cfuncs && ${MAKE} ICONT=${WRKBUILD}/bin/icont; \
	fi

# We put a wrapper around icont for finding the library files when
# they're installed
# The icon manpage is available separately... I've included it along
# with the package. Ludicrous to get through a ftp connexion for such
# a small file...
do-install:
	sed -e 's,@PREFIX@,${TRUEPREFIX},' \
	    ${FILESDIR}/icont.template >${WRKBUILD}/icont
	${INSTALL_DATA_DIR} ${WRKBUILD}/bin/rt.h ${WRKINST}${LIBDIR}
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/icont ${WRKINST}${LIBDIR}
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/iconx ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/iconc ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/rtt ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKBUILD}/icont ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/man1/icont.1 ${PREFIX}/man/man1/icont.1
	cd ${PREFIX}/man/man1 && ln -f icont.1 iconx.1
	cd ${PREFIX}/man/man1 && ln -f icont.1 iconc.1
	# Yes, this is only used by generated code !
	${INSTALL_DATA} ${WRKBUILD}/bin/rt.h ${WRKINST}${LIBDIR}
	${INSTALL_DATA} ${WRKBUILD}/bin/rt.a ${WRKINST}${LIBDIR}
	${INSTALL_DATA} ${WRKBUILD}/bin/rt.db ${WRKINST}${LIBDIR}
	${INSTALL_DATA} ${WRKBUILD}/bin/dlrgint.o ${WRKINST}${LIBDIR}
	if [ x${NO_SHARED_LIBS:L} != "yes" ]; then \
	    ${INSTALL_DATA_DIR} ${PREFIX}/share/ipl/ucode; \
	    ${INSTALL_DATA} ${WRKBUILD}/ipl/cfuncs/cfunc.u?  ${PREFIX}/share/ipl/ucode; \
	    ${INSTALL_DATA} ${WRKBUILD}/ipl/cfuncs/libcfunc.so ${PREFIX}/lib; \
	fi

REGRESS_FLAGS=	HOME=/

# Iconc does not pass quite a few tests currently...
REGRESS_TARGET=	Test-icont #Test-iconc

.include <bsd.port.mk>
