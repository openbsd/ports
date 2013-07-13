# $OpenBSD: Makefile,v 1.27 2013/07/13 08:33:03 espie Exp $

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

PKGNAME-main=		icon-interp-${VERSION}
REVISION-main =		3
REVISION-compiler =	0
PKGNAME-compiler= 	icon-compiler-${VERSION}

# Public domain
PERMIT_PACKAGE_CDROM=	Yes

HOMEPAGE=	http://www.cs.arizona.edu/icon/

MAINTAINER=	Marc Espie <espie@openbsd.org>

#WRKDIST=	${WRKDIR}

FLAVORS=	no_x11
FLAVOR?=	

MAKE_ENV=	ARCH="${MACHINE_ARCH}"
CONF_DIR=	${WRKSRC}/config/unix/openbsd
ALL_TARGET=	Icont Iconc
USE_GROFF =	Yes

LIBDIR=${TRUEPREFIX}/lib/icon

WANTLIB-compiler=	c
WANTLIB-main=		c m pthread

.if ${FLAVOR:Mno_x11}
CONFIGURE_TARGET=	Configure
.else
CONFIGURE_TARGET=	X-Configure
WANTLIB-main+=		X11 Xpm pthread-stubs xcb
.endif

.include <bsd.port.arch.mk>

do-configure:
	cd ${WRKSRC} && ${MAKE} ${CONFIGURE_TARGET} name=bsd
.if ${PROPERTIES:Mno_shared}
	echo "#undef LoadFunc" >>${WRKSRC}/src/h/define.h
.endif

post-build:
.if !${PROPERTIES:Mno_shared}
	cd ${WRKSRC}/ipl/cfuncs && ${MAKE} ICONT=${WRKBUILD}/bin/icont
.endif

# We put a wrapper around icont for finding the library files when
# they're installed
# The icon manpage is available separately... I've included it along
# with the package. Ludicrous to get through a ftp connexion for such
# a small file...
do-install:
	sed -e 's,@PREFIX@,${TRUEPREFIX},' \
	    ${FILESDIR}/icont.template >${WRKBUILD}/icont
	${INSTALL_DATA_DIR} ${WRKINST}${LIBDIR}
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
.if !${PROPERTIES:Mno_shared}
	${INSTALL_DATA_DIR} ${PREFIX}/share/ipl/ucode
	${INSTALL_DATA} ${WRKBUILD}/ipl/cfuncs/cfunc.u?  ${PREFIX}/share/ipl/ucode
	${INSTALL_DATA} ${WRKBUILD}/ipl/cfuncs/libcfunc.so ${PREFIX}/lib
.endif

TEST_FLAGS=	HOME=/

# Iconc does not pass quite a few tests currently...
TEST_TARGET=	Test-icont #Test-iconc

.include <bsd.port.mk>
