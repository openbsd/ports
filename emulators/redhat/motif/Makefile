# $OpenBSD: Makefile,v 1.3 2001/10/25 16:14:51 naddy Exp $

COMMENT=	"Motif toolkit Linux libraries"

PKGNAME=	redhat_motif-2.1.30

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

MASTER_SITE_SUBDIR=	contrib/openmotif/linux-rpm
DISTFILES=	openmotif-2.1.30-1_ICS.i386.rpm

RUN_DEPENDS=	/emul/linux/sbin/ldconfig::emulators/redhat/base

EXTRACT_FILES=	usr/X11R6/lib/libMrm.so.2.1 \
		usr/X11R6/lib/libUil.so.2.1 \
		usr/X11R6/lib/libXm.so.2.1

NO_REGRESS=	Yes

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}
	@cd ${PREFIX}; \
	    ${LOCALBASE}/bin/rpm2cpio ${FULLDISTDIR}/${DISTFILES} \
		| cpio -idum ${EXTRACT_FILES}

.include <bsd.port.mk>
