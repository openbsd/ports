# Simple Icon port, does not yet support variant translators
# $OpenBSD: Makefile,v 1.2 1998/10/13 14:58:39 espie Exp $

DISTNAME=icon-9.3.1
DIST_SUBDIR=icon

CATEGORIES=lang

MAINTAINER=espie@openbsd.org

MASTER_SITES=ftp://ftp.cs.arizona.edu:/icon/packages/unix/
DISTFILES=unix.tgz
USE_X11=yes
WRKSRC=${WRKDIR}


# need to pass architecture type to the configure script
SCRIPTS_ENV=ARCH="${ARCH}"
MAKE_ENV=ARCH="${ARCH}"

CONF_DIR=${WRKSRC}/config/unix/openbsd

ALL_TARGET=Icon-icont

pre-configure:
	cp -R ${FILESDIR}/openbsd ${WRKSRC}/config/unix
	if [ -f ${CONF_DIR}/${ARCH}_rswitch.c ] ; then \
		ln -f ${CONF_DIR}/${ARCH}_rswitch.c ${CONF_DIR}/rswitch.c ;\
	else \
		touch ${CONF_DIR}/rswitch.c ;\
	fi 


# We put a wrapper around icont for finding the library files when
# they're installed
# The icon manpage is available separately... I've included it along
# with the package. Ludicrous to get through a ftp connexion for such
# a small file...
do-install:
	perl ${SCRIPTDIR}/mk_icont ${PREFIX} >${WRKSRC}/icont
	${INSTALL_PROGRAM} ${WRKSRC}/bin/icont ${PREFIX}/lib
	${INSTALL_PROGRAM} ${WRKSRC}/bin/iconx ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/bin/rtt ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/icont ${PREFIX}/bin
	${INSTALL_MAN} ${FILESDIR}/icon.1 ${PREFIX}/man/man1/icont.1
	cd ${PREFIX}/man/man1 && ln icont.1 iconx.1
	${INSTALL_DATA} ${WRKSRC}/bin/rt.h ${PREFIX}/include
	cd ${PREFIX}/bin && ${WRKSRC}/bin/patchstr ${PREFIX}/lib/icont ${PREFIX}/bin/iconx

.include <bsd.port.mk>
