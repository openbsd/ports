# $OpenBSD: Makefile,v 1.4 1999/07/13 20:37:14 espie Exp $

DISTNAME=	icon-9.3.1
CATEGORIES=	lang
MASTER_SITES=	ftp://ftp.cs.arizona.edu:/icon/packages/unix/
DIST_SUBDIR=	icon
DISTFILES=	unix.tgz

MAINTAINER=	espie@openbsd.org

NO_WRKSUBDIR=	yes
USE_X11=	yes

SCRIPTS_ENV=	ARCH="${MACHINE_ARCH}"
MAKE_ENV=	ARCH="${MACHINE_ARCH}"
CONF_DIR=	${WRKSRC}/config/unix/openbsd

ALL_TARGET=	Icon-icont

pre-configure:
	cp -R ${FILESDIR}/openbsd ${WRKSRC}/config/unix
	if [ -f ${CONF_DIR}/${ARCH}_rswitch.c ] ; then \
		${LN} -f ${CONF_DIR}/${ARCH}_rswitch.c ${CONF_DIR}/rswitch.c ;\
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
