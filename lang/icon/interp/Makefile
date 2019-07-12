# $OpenBSD: Makefile,v 1.32 2019/07/12 20:47:18 sthen Exp $

COMMENT-main =		programming language with generators, X11 and more
COMMENT-main-no_x11 =	programming language with generators

VERSION =	9.5.1
DISTNAME =	icon-v951src
CATEGORIES =	lang
MASTER_SITES = 	http://www.cs.arizona.edu/icon/ftp/packages/unix/
DISTFILES =	icon-v951src.tgz

MULTI_PACKAGES =	-main #-compiler

PKGNAME-main =		icon-interp-${VERSION}
REVISION-main =		0

# Public domain
PERMIT_PACKAGE =	Yes

HOMEPAGE =	http://www.cs.arizona.edu/icon/

MAINTAINER =	Marc Espie <espie@openbsd.org>

FLAVORS =	no_x11
FLAVOR ?=	

MAKE_ENV =	ARCH="${MACHINE_ARCH}"
ALL_TARGET =	Icont

LIBDIR =	${TRUEPREFIX}/lib/icon

WANTLIB-main =		c m pthread

.if ${FLAVOR:Mno_x11}
CONFIGURE_TARGET =	Configure
.else
CONFIGURE_TARGET =	X-Configure
WANTLIB-main +=		X11 Xpm
.endif

do-configure:
	cd ${WRKSRC} && ${MAKE} ${CONFIGURE_TARGET} name=bsd
	echo "RLINK=-rdynamic" >>${WRKSRC}/Makedefs
.if ${FLAVOR:Mno_x11}
	echo "XINCLUDE=" >>${WRKSRC}/Makedefs
.endif

post-build:
	cd ${WRKSRC}/ipl/cfuncs && ${MAKE} ICONT=${WRKBUILD}/bin/icont

# We put a wrapper around icont for finding the library files when
# they're installed
# The icon manpage is available separately... I've included it along
# with the package. Ludicrous to get through a ftp connexion for such
# a small file...
do-install:
	${SUBST_PROGRAM} ${FILESDIR}/icont.template ${PREFIX}/bin/icont
	${INSTALL_DATA_DIR} ${WRKINST}${LIBDIR}
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/icont ${WRKINST}${LIBDIR}
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/iconx ${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/man/man1/icont.1 ${PREFIX}/man/man1/icont.1
	cd ${PREFIX}/man/man1 && ln -f icont.1 iconx.1
	${INSTALL_DATA_DIR} ${PREFIX}/share/ipl/ucode
	${INSTALL_DATA} ${WRKBUILD}/ipl/cfuncs/cfunc.u?  ${PREFIX}/share/ipl/ucode
	${INSTALL_DATA} ${WRKBUILD}/ipl/cfuncs/libcfunc.so ${PREFIX}/lib

TEST_FLAGS =	HOME=/

TEST_TARGET =	Test-icont
TEST_DEPENDS =	lang/icon/lib

.include <bsd.port.mk>
