# $OpenBSD: Makefile,v 1.1.1.1 2000/11/19 20:02:12 espie Exp $
# Original from: Marc Espie
# XXX This port installs in a somewhat unusual way.

# Directory where the maple CDROM was mounted
.if !defined(MAPLE_CDROM)
IGNORE="Commercial port, mount the maple share cdrom and build with make MAPLE_CDROM=mount_point"
.endif

# where the basic distribution unpacks
MAPLE_DIR?=${PREFIX}/maple
TRUEMAPLE_DIR?=${TRUEPREFIX}/maple

DISTNAME=	mapleshare-5.5
CATEGORIES=     math
NEED_VERSION=	1.223

# if someone wants to buy the sparc version and check it, be my guest...

ONLY_FOR_ARCHS=	i386


PERMIT_DISTFILES_CDROM=	Commercial
PERMIT_DISTFILES_FTP=	Commercial
PERMIT_PACKAGE_FTP=	Commercial
PERMIT_PACKAGE_CDROM=	Commercial

MAINTAINER=	Marc Espie <espie@openbsd.org>

WRKDIST=	${WRKDIR}

# verify that it makes sense to install maple here
pre-fetch:
	@echo "You must have LINUX_COMPAT in your kernel for this port"

# we only use the CD-Rom files for markers
DIST_SUBDIR=maple5.5
DISTFILES=unix/share.tar readunix

# and so, we don't extract anything by ourselves
# better than NO_EXTRACT, as this builds WRKDIR correctly for us.
EXTRACT_ONLY=


do-fetch:
	@mkdir -p ${FULLDISTDIR}
	@cd ${MAPLE_CDROM}; \
	for file in ${DISTFILES}; do\
		[ -f ${FULLDISTDIR}/$$file ] || \
		if [ -f $$file ]; \
		then\
			mkdir -p ${FULLDISTDIR}/`dirname $$file`;\
			ln -sf ${MAPLE_CDROM}/$$file ${FULLDISTDIR}/$$file;\
		else\
			echo "File $$file not found. Is your cdrom mounted as ${MAPLE_CDROM} ?";\
		fi\
	done

RUN_DEPENDS=maple::math/maple
NO_BUILD=Yes 

pre-fake:
	@mkdir -p ${MAPLE_DIR}

do-install:
	@cd ${MAPLE_DIR} && tar xf ${FULLDISTDIR}/unix/share.tar
	@cp ${FULLDISTDIR}/readunix ${MAPLE_DIR}/share/README

.include <bsd.port.mk>
