# $OpenBSD: Makefile,v 1.2 2006/10/17 23:41:58 sturm Exp $

COMMENT=	"Motif toolkit Linux libraries"

PKGNAME=	fedora_motif-2.1.30p0
# clean up after make plist
#	perl -pi -e "s,^\@lib ,," pkg/PLIST
SHARED_LIBS=	Mrm	2.1 \
		Uil	2.1 \
		Xm	2.1

DISTFILES=	openmotif21-2.1.30-14.i386.rpm
MASTER_SITES=	${MASTER_SITE_FEDORA:=4/i386/os/Fedora/RPMS/}

RUN_DEPENDS=	::emulators/fedora/base

EXTRACT_FILES=	./usr/X11R6/lib/libMrm.so.2.1 \
		./usr/X11R6/lib/libUil.so.2.1 \
		./usr/X11R6/lib/libXm.so.2.1

NO_BUILD=	Yes
NO_REGRESS=	Yes

do-install:
	@${INSTALL_DATA_DIR} ${FEDORADIR}
	@cd ${FEDORADIR}; \
	    ${LOCALBASE}/bin/rpm2cpio ${FULLDISTDIR}/${DISTFILES} \
		| cpio -idum ${EXTRACT_FILES}
	@cd ${FEDORADIR} && chown ${SHAREOWN}:${SHAREGRP} ${EXTRACT_FILES}

.include <bsd.port.mk>
