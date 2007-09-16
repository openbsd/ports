# $OpenBSD: Makefile,v 1.32 2007/09/16 02:53:11 merdely Exp $

BROKEN=		attempts to install during build
ONLY_FOR_ARCHS=	i386
FAKE=No
COMMENT=	PalmPilot(tm) development environment

VERSION=	0.5.0
DISTNAME=       prc-tools.${VERSION}
PKGNAME=	prc-tools-${VERSION}
CATEGORIES=     devel palm
MASTER_SITES=   ftp://ryeham.ee.ryerson.ca/pub/PalmOS/
MASTER_SITES0=	${MASTER_SITE_GNU:S@%SUBDIR%@binutils@}
MASTER_SITES1=	${MASTER_SITE_GNU:S@%SUBDIR%@gdb@}
MASTER_SITES2=	${MASTER_SITE_GNU:S@%SUBDIR%@gcc@}
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		binutils-2.7${EXTRACT_SUFX}:0 \
		gdb-4.16${EXTRACT_SUFX}:1 \
		gcc-2.7.2.2${EXTRACT_SUFX}:2

HOMEPAGE=	http://prc-tools.sourceforge.net/

# License: GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WRKDIST=	${WRKDIR}/${PKGNAME}
PREFIX=		${LOCALBASE}/palm

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

.include <bsd.port.mk>
