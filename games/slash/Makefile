# $OpenBSD: Makefile,v 1.13 2000/04/09 17:36:32 espie Exp $

DISTNAME=	slash-e8
CATEGORIES=	games
NEED_VERSION=	1.121
FAKE=No
MASTER_SITES0=	${MASTER_SITE_GNU}
MASTER_SITES1=	http://www.rz.tu-ilmenau.de/~wi019/Slash/
MASTER_SITE_SUBDIR= nethack
DISTFILES=	nethack-3.2.2.tar.gz:0 Slash-Unix.tar.gz:1


MAINTAINER=	espie@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

USE_GMAKE=	yes
USE_X11=	yes

NHDIR=		${PREFIX}/lib/slashdir
MAKE_ENV+= 	NHDIR=${NHDIR}

post-extract:
	@cd ${WRKDIR}; mv nethack-3.2.2 ${DISTNAME}
	@cd ${WRKDIR}; mv dat/* ${DISTNAME}/dat
	@cp ${FILESDIR}/blkmar.des ${WRKSRC}/dat

pre-patch:
	@cd ${WRKSRC}; ${PATCH} -p1 -s < ${WRKDIR}/slashe8.dif
	@cd ${WRKSRC}; ${PATCH} -p1 -s < ${WRKDIR}/e8p1.dif

pre-configure:
	@cd ${WRKSRC}/sys/unix; ${SH} setup.sh

post-install:
	@mkdir -p ${PREFIX}/lib/X11/fonts/hack
	@mkdir -p ${PREFIX}/share/doc/nethack
	@cd ${WRKSRC}/doc; ${CHMOD} 644 *.6
	@cd ${WRKSRC}/doc; PREFIX='${PREFIX}' INSTALL_MAN='${INSTALL_MAN}' ${MAKE} manpages
	${INSTALL_DATA} ${WRKSRC}/doc/Guidebook.txt ${PREFIX}/share/doc/nethack
	@cd ${WRKSRC}/win/X11 && \
	sed -e "s/^NetHack/Slash/; s/^!NetHack/!Slash/" <NetHack.ad > Slash && \
	${INSTALL_DATA} Slash ${PREFIX}/lib/X11/app-defaults && \
	${X11BASE}/bin/bdftopcf ibm.bdf | /usr/bin/gzip > ibm.pcf.gz && \
	${X11BASE}/bin/bdftopcf nh10.bdf | /usr/bin/gzip > nh10.pcf.gz && \
	${INSTALL_DATA} ibm.pcf.gz ${PREFIX}/lib/X11/fonts/hack && \
	${INSTALL_DATA} nh10.pcf.gz ${PREFIX}/lib/X11/fonts/hack
	${X11BASE}/bin/mkfontdir ${X11BASE}/lib/X11/fonts/hack
	@cat ${PKGDIR}/DESCR

.include <bsd.port.mk>
