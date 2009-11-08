# $OpenBSD: Makefile,v 1.18 2009/11/08 13:32:27 jasper Exp $

# XXX crashes & hangs, to be dealt with
NOT_FOR_ARCHS=	powerpc m68k hppa arm sparc mips64

COMMENT=	programming language with generators, X11 graphics and more

CATEGORIES=	lang
DISTNAME=	unicon-10.0beta
PKGNAME=	${DISTNAME}p1
DISTFILES=	uni.zip

HOMEPAGE=	http://unicon.sourceforge.net/

MASTER_SITES=	http://icon.cs.unlv.edu/v9/
MAINTAINER=	Marc Espie <espie@openbsd.org>

# GPL
PERMIT_DISTFILES_FTP= Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_PACKAGE_FTP= Yes
PERMIT_PACKAGE_CDROM= Yes
WANTLIB=	X11 Xpm c m pthread-stubs xcb

WRKDIST=	${WRKDIR}

LIB_DEPENDS=	gdbm.::databases/gdbm

USE_X11=	Yes

MAKE_ENV=	ARCH="${MACHINE_ARCH}"
CONF_DIR=	${WRKSRC}/config/unix/openbsd
ALL_TARGET=	Unicon

CONFIGURE_TARGET=X-Configure

REGRESS_TARGET=	Test

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
pre-install:
.for i in unicon ivib
	-cd ${WRKBUILD}/bin && mv $i $i.bak && \
		sed -e s,`pwd -P`,${TRUEPREFIX}/bin, <$i.bak >$i
.endfor

do-install:
	perl ${FILESDIR}/mk_icont ${TRUEPREFIX} >${WRKBUILD}/icont
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/icont ${PREFIX}/lib
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/iconx ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/miconx ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKBUILD}/bin/rtt ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKBUILD}/icont ${PREFIX}/bin
	${INSTALL_MAN} ${FILESDIR}/icon.1 ${PREFIX}/man/man1/icont.1
	cd ${PREFIX}/man/man1 && ln -f icont.1 iconx.1
	${INSTALL_DATA} ${WRKBUILD}/bin/rt.h ${PREFIX}/include
	cd ${PREFIX}/bin && ${WRKBUILD}/bin/patchstr ${PREFIX}/lib/icont ${TRUEPREFIX}/bin/iconx
	${INSTALL_SCRIPT} ${WRKBUILD}/bin/unicon ${PREFIX}/bin
	-${INSTALL_SCRIPT} ${WRKBUILD}/bin/ivib ${PREFIX}/bin
	${INSTALL_DATA_DIR} ${PREFIX}/share/ipl/lib
	${INSTALL_DATA_DIR} ${PREFIX}/share/ipl/include
	for i in ${WRKBUILD}/ipl/lib/*.u; do \
		${INSTALL_DATA} $$i ${PREFIX}/share/ipl/lib; \
	done
	for i in ${WRKBUILD}/ipl/{incl,gincl}/*.icn; do \
		${INSTALL_DATA} $$i ${PREFIX}/share/ipl/include; \
	done

.include <bsd.port.mk>
