# $OpenBSD: Makefile,v 1.1.1.1 2001/09/16 16:48:11 naddy Exp $

COMMENT=	"Motif toolkit Linux libraries"

PKGNAME=	redhat_motif-2.1.30

MAINTAINER=	Christian Weisgerber <naddy@openbsd.org>

MASTER_SITE_SUBDIR=	contrib/openmotif/linux-rpm
DISTFILES=	openmotif-2.1.30-1_ICS.i386.rpm

RUN_DEPENDS=	/emul/linux/sbin/ldconfig::emulators/redhat/base

EXTRACT_FILES=	usr/X11R6/lib/libMrm.so.2.1 \
		usr/X11R6/lib/libUil.so.2.1 \
		usr/X11R6/lib/libXm.so.2.1

do-install:
	@${INSTALL_DATA_DIR} ${PREFIX}
	@cd ${PREFIX}; \
	    rpm2cpio ${FULLDISTDIR}/${DISTFILES} | cpio -idum ${EXTRACT_FILES}

.include <bsd.port.mk>
