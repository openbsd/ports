# $OpenBSD: Makefile,v 1.19 2001/08/30 22:16:42 pvalchev Exp $

FAKE=No
COMMENT=	"PalmPilot(tm) development environment"

DISTNAME=       prc-tools.0.5.0
PKGNAME=	prc-tools-0.5.0
CATEGORIES=     devel palm
NEED_VERSION=	1.440
MASTER_SITES=   ftp://ryeham.ee.ryerson.ca/pub/PalmOS/ \
		${MASTER_SITE_GNU}
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		binutils-2.7.tar.gz gdb-4.16.tar.gz gcc-2.7.2.2.tar.gz

MAINTAINER=     Angelos D. Keromytis <angelos@openbsd.org>

# License: GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

WRKDIST=	${WRKDIR}/${PKGNAME}
PREFIX=		${LOCALBASE}/palm
MAKE_FLAGS=	DPREFIX=${PREFIX}

STRIP=		build-prc \
		m68k-palmos-coff-ar \
		m68k-palmos-coff-as \
		m68k-palmos-coff-c++filt \
		m68k-palmos-coff-gasp \
		m68k-palmos-coff-gcc \
		m68k-palmos-coff-gdb \
		m68k-palmos-coff-ld \
		m68k-palmos-coff-nm \
		m68k-palmos-coff-obj-res \
		m68k-palmos-coff-objcopy \
		m68k-palmos-coff-objdump \
		m68k-palmos-coff-ranlib \
		m68k-palmos-coff-size \
		m68k-palmos-coff-strings \
		m68k-palmos-coff-strip \
		pilrc \
		txt2bitm

# check for "-m486" and bomb out if the user has it
do-build:
		@if echo ${CFLAGS} | grep -- "-m486" > /dev/null ; then \
			echo "ERROR: You have \"-m486\" defined some-" ; \
			echo "       where, either in /etc/make.conf" ; \
			echo "       or in the CFLAGS environment" ; \
			echo "       variable.  This will cause this" ; \
			echo "       port to not build properly.  Please" ; \
			echo "       fix this and re-run make." ; \
			exit 1 ; \
		else \
			echo "Your environment looks OK." ; \
		fi
		@cd ${WRKDIR}/${PKGNAME} && ${MAKE_ENV} ${MAKE_PROGRAM} ${MAKE_FLAGS} -f ${MAKE_FILE} gnutools all install

# before we apply our patches, apply prc-tools' patches to gcc/gdb/...
pre-patch:
		@(cd ${WRKDIR}/${PKGNAME} && cat *.palmos.diff | (cd .. ; patch --quiet -p0 ; touch stamp.patch))
		@find ${WRKDIR}/ -name \*.orig -exec rm -f {} \;

do-install:
	@rm -rf ${PREFIX}/info
	@(cd ${PREFIX}/bin && strip ${STRIP})
	@echo "+--------- "
	@echo "| To upgrade to the PalmOS3 SDK, install the"
	@echo "| palm/palmos-sdk package and make a link from the"
	@echo "| directory ${LOCALBASE}/palm/sdk-3.5/include/Core"
	@echo "| to ${PREFIX}/m68k-palmos-coff/include/PalmOS"
	@echo "| after deleting the existing link."
	@echo "+----------"

.include <bsd.port.mk>
