# $OpenBSD: Makefile,v 1.26 2009/04/13 12:27:38 espie Exp $
# Original from: Marc Espie
# XXX This port installs in a somewhat unusual way.

.include <bsd.own.mk>

COMMENT=	algebraic and symbolic computations; commercial

# where the basic distribution unpacks
MAPLE_DIR?=${PREFIX}/maple
TRUEMAPLE_DIR?=${TRUEPREFIX}/maple

DISTNAME=	maple-5.5
PKGNAME=	${DISTNAME}p1
CATEGORIES=     math

RUN_DEPENDS=	:redhat_libc5-*:emulators/redhat/libc5

# if someone wants to buy the sparc version and check it, be my guest...

ONLY_FOR_ARCHS=	i386


FETCH_MANUALLY = "Mount the maple cdrom somewhere and make copy MAPLE_CDROM=mnt_point"
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
DISTFILES= readme install \
install_base/base.tar install_base/bin.tar install_base/license.tar \
install_bins/bin_ibm_intel_linux.tar

# and so, we don't extract anything by ourselves
# better than NO_EXTRACT, as this builds WRKDIR correctly for us.
EXTRACT_ONLY=

COPY_CMD=cp -f

post-extract:
	ln -sf ${FILESDIR}/resolv_display.c ${WRKSRC}
	echo "all: resolv_display" >${WRKSRC}/Makefile

ALL_TARGET=resolv_display

copy:
	@mkdir -p ${FULLDISTDIR}
	@cd ${MAPLE_CDROM}; \
	for file in ${DISTFILES}; do\
		[ -f ${FULLDISTDIR}/$$file ] || \
		if [ -f $$file ]; \
		then\
			mkdir -p ${FULLDISTDIR}/`dirname $$file`;\
			${COPY_CMD} ${MAPLE_CDROM}/$$file ${FULLDISTDIR}/$$file;\
		else\
			echo "File $$file not found. Is your cdrom mounted as ${MAPLE_CDROM} ?";\
		fi\
	done

MAPLE_SCRIPTS=maple march mint updtsrc xmaple

do-install:
	@mkdir -p ${MAPLE_DIR} || echo "${MAPLE_DIR} already exists"
	@cd ${MAPLE_DIR} && yes | ${FULLDISTDIR}/install
	@echo "But this installation script does it for you"
	@for file in ${MAPLE_SCRIPTS}; do\
		sed -e 's,/usr/local/maple,${TRUEMAPLE_DIR},' ${MAPLE_DIR}/bin/$$file >${WRKDIST}/$$file; \
		cp ${WRKDIST}/$$file ${MAPLE_DIR}/bin; \
		ln -sf ${TRUEMAPLE_DIR}/bin/$$file ${PREFIX}/bin; \
	done
	@for file in ${MAPLE_DIR}/man/man1/*; do \
		ln -s ${TRUEMAPLE_DIR}/man/man1/`basename $$file` ${PREFIX}/man/man1; \
	done
	@cd ${MAPLE_DIR} && cat ${PATCHDIR}/install-*| patch -s && \
		rm ${MAPLE_DIR}/bin/*.orig
	@${INSTALL_PROGRAM} ${WRKBUILD}/resolv_display ${MAPLE_DIR}/bin
	cd ${PREFIX} && find . -user 292 -print|xargs -r chown ${SHAREOWN}:${SHAREGRP}
	cd ${PREFIX} && find . -user 400 -print|xargs -r chown ${BINOWN}:${BINGRP}

.include <bsd.port.mk>
