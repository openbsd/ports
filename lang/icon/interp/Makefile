# $OpenBSD: Makefile,v 1.5 2000/10/08 18:22:56 espie Exp $

VERSION=	9.3.2
DISTNAME=	icon_interp-${VERSION}
CATEGORIES=	lang
NEED_VERSION=	1.224
MASTER_SITES=	ftp://ftp.cs.arizona.edu:/icon/packages/unix/
DIST_SUBDIR=	icon/${VERSION}
DISTFILES=	unix.tgz
LICENSE_TYPE=	PD
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MAINTAINER=	Marc Espie <espie@openbsd.org>

WRKDIST=	${WRKDIR}

SCRIPTS_ENV=	ARCH="${MACHINE_ARCH}"
MAKE_ENV=	ARCH="${MACHINE_ARCH}"
CONF_DIR=	${WRKSRC}/config/unix/openbsd
ALL_TARGET=	Icon-icont

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
	perl ${SCRIPTDIR}/mk_icont ${TRUEPREFIX} >${WRKSRC}/icont
	${INSTALL_PROGRAM} ${WRKSRC}/bin/icont ${PREFIX}/lib
	${INSTALL_PROGRAM} ${WRKSRC}/bin/iconx ${PREFIX}/bin
	${INSTALL_PROGRAM} ${WRKSRC}/bin/rtt ${PREFIX}/bin
	${INSTALL_SCRIPT} ${WRKSRC}/icont ${PREFIX}/bin
	${INSTALL_MAN} ${FILESDIR}/icon.1 ${PREFIX}/man/man1/icont.1
	cd ${PREFIX}/man/man1 && ln icont.1 iconx.1
	${INSTALL_DATA} ${WRKSRC}/bin/rt.h ${PREFIX}/include
	cd ${PREFIX}/bin && ${WRKSRC}/bin/patchstr ${PREFIX}/lib/icont ${TRUEPREFIX}/bin/iconx

.include <bsd.port.mk>
