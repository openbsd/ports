# $OpenBSD: Makefile,v 1.7 2001/04/08 16:41:49 espie Exp $

COMMENT=	"programming language with generators, X11 and more"
COMMENT-no_x11=	"programming language with generators"
COMMENT-compiler="icon compiler"
VERSION=	9.3.2
DISTNAME=	icon-interp-${VERSION}
CATEGORIES=	lang
NEED_VERSION=	1.387
MASTER_SITES=	ftp://ftp.cs.arizona.edu:/icon/packages/unix/
DIST_SUBDIR=	icon/${VERSION}
DISTFILES=	unix.tgz

MULTI_PACKAGES=	-compiler

PKGNAME-compiler= icon-compiler-${VERSION}

# Public domain
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

HOMEPAGE=	http://www.cs.arizona.edu/icon/

MAINTAINER=	Marc Espie <espie@openbsd.org>

WRKDIST=	${WRKDIR}

FLAVORS=	no_x11
FLAVOR?=	

SCRIPTS_ENV=	ARCH="${MACHINE_ARCH}"
MAKE_ENV=	ARCH="${MACHINE_ARCH}"
CONF_DIR=	${WRKSRC}/config/unix/openbsd
ALL_TARGET=	Icon-icont Icon-iconc

LIBDIR=${TRUEPREFIX}/lib/icon

.if ${FLAVOR:L:Mno_x11}
CONFIGURE_TARGET=Configure
.else
CONFIGURE_TARGET=X-Configure
.endif

pre-configure:
	cp -R ${FILESDIR}/openbsd ${WRKSRC}/config/unix
	if [ -f ${CONF_DIR}/${ARCH}_rswitch.c ] ; then \
		ln -f ${CONF_DIR}/${ARCH}_rswitch.c ${CONF_DIR}/rswitch.c ;\
	else \
		touch ${CONF_DIR}/rswitch.c ;\
		echo "#define NoCoexpr" \
		    >>${WRKSRC}/config/unix/openbsd/define.h;\
	fi 

do-configure:
	cd ${WRKSRC} && make ${CONFIGURE_TARGET} name=openbsd

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
	${INSTALL_MAN} ${FILESDIR}/icon.1 ${PREFIX}/man/man1/icont.1
	cd ${PREFIX}/man/man1 && ln -f icont.1 iconx.1
	cd ${PREFIX}/man/man1 && ln -f icont.1 iconc.1
	# Yes, this is only used by generated code !
	${INSTALL_DATA} ${WRKBUILD}/bin/rt.h ${WRKINST}${LIBDIR}
	${INSTALL_DATA} ${WRKBUILD}/bin/rt.a ${WRKINST}${LIBDIR}
	${INSTALL_DATA} ${WRKBUILD}/bin/rt.db ${WRKINST}${LIBDIR}
	${INSTALL_DATA} ${WRKBUILD}/bin/dlrgint.o ${WRKINST}${LIBDIR}
	cd ${PREFIX}/bin && \
	    ${WRKSRC}/bin/patchstr ${WRKINST}${LIBDIR}/icont ${TRUEPREFIX}/bin/iconx
	cd ${PREFIX}/bin && \
	    ${WRKSRC}/bin/patchstr ${PREFIX}/bin/iconc ${LIBDIR}/

.include <bsd.port.mk>
