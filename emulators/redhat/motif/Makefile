# $OpenBSD: Makefile,v 1.13 2005/11/25 23:04:21 bernd Exp $

COMMENT=	"Motif toolkit Linux libraries"

PKGNAME=	redhat_motif-2.1.30p3

MASTER_SITES=	${MASTER_SITE_REDHAT:=contrib/openmotif/linux-rpm/}
DISTFILES=	openmotif-2.1.30-1_ICS.i386.rpm

RUN_DEPENDS=	::emulators/redhat/base

EXTRACT_FILES=	usr/X11R6/lib/libMrm.so.2.1 \
		usr/X11R6/lib/libUil.so.2.1 \
		usr/X11R6/lib/libXm.so.2.1

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}
	@cd ${PREFIX}; \
	    ${LOCALBASE}/bin/rpm2cpio ${FULLDISTDIR}/${DISTFILES} \
		| cpio -idum ${EXTRACT_FILES}
	@cd ${PREFIX} && chown ${SHAREOWN}:${SHAREGRP} ${EXTRACT_FILES}

.include <bsd.port.mk>
