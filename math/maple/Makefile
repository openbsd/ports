# $OpenBSD: Makefile,v 1.3 1999/09/22 10:18:26 espie Exp $
# Original from: Marc Espie
# XXX This port installs in a somewhat unusual way.

# Directory where the maple CDROM was mounted
CDROM?=/cdrom
NEED_VERSION=1.116

# where the basic distribution unpacks
MAPLE_DIR?=${PREFIX}/maple

DISTNAME=		maple-5.5
CATEGORIES=     	maths

# if someone wants to buy the sparc version and check it, be my guest...

ONLY_FOR_ARCHS=	i386
NO_CDROM=		"Commercial"
MIRROR_DISTFILE=	no

MAINTAINER=		espie@cvs.openbsd.org

NO_WRKSUBDIR=  yes
NO_PATCH=		yes
NO_CONFIGURE=	yes
NO_PACKAGE=		yes

# verify that it makes sense to install maple here
pre-fetch:
	@${ECHO} "You must have LINUX_COMPAT in your kernel for this port"

# we only use the CD-Rom files for markers
DIST_SUBDIR=maple5.5
DISTFILES=readme install \
install_base/base.tar install_base/bin.tar install_base/license.tar \
install_bins/bin_ibm_intel_linux.tar

# and so, we don't extract anything by ourselves
# better than NO_EXTRACT, as this builds WRKDIR correctly for us.
EXTRACT_ONLY=

post-extract:
	ln -sf ${FILESDIR}/resolv_display.c ${WRKSRC}
	echo "all: resolv_display" >${WRKSRC}/Makefile

ALL_TARGET=resolv_display

do-fetch:
	@mkdir -p ${FULLDISTDIR}
	@cd ${CDROM}; \
	for file in ${DISTFILES}; do\
		[ -f ${FULLDISTDIR}/$$file ] || \
		if [ -f $$file ]; \
		then\
			mkdir -p ${FULLDISTDIR}/`dirname $$file`;\
			ln -sf ${CDROM}/$$file ${FULLDISTDIR}/$$file;\
		else\
			${ECHO} "File $$file not found. Is your cdrom mounted as ${CDROM} ?";\
		fi\
	done

MAPLE_SCRIPTS=maple march mint updtsrc xmaple

do-install:
	@mkdir ${MAPLE_DIR} || ${ECHO} "${MAPLE_DIR} already exists"
	@cd ${MAPLE_DIR} && yes | ${FULLDISTDIR}/install
	@${ECHO} "But this installation script does it for you"
	@for file in ${MAPLE_SCRIPTS}; do\
		sed -e 's,/usr/local/maple,${MAPLE_DIR},' ${MAPLE_DIR}/bin/$$file >${WRKDIR}/$$file; \
		cp ${WRKDIR}/$$file ${MAPLE_DIR}/bin; \
		ln -sf ${MAPLE_DIR}/bin/$$file ${PREFIX}/bin; \
	done
	@for file in ${MAPLE_DIR}/man/man1/*; do \
		ln -s $$file ${PREFIX}/man/man1; \
	done
	@cd ${MAPLE_DIR} && cat ${PATCHDIR}/patch-*| patch -s && \
		rm ${MAPLE_DIR}/bin/*.orig
	@${INSTALL_PROGRAM} ${WRKBUILD}/resolv_display ${MAPLE_DIR}/bin

.include <bsd.port.mk>
