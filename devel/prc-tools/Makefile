# OpenBSD makefile for: prc-tools
# Version required:     0.6.0
# Date created:         8 September 1998
# Whom:                 Angelos D. Keromytis
#
# $OpenBSD: Makefile,v 1.1.1.1 1998/11/26 17:22:52 angelos Exp $
# $Id: Makefile,v 1.1.1.1 1998/11/26 17:22:52 angelos Exp $
#
# *WARNING* write access to ${PREFIX} is required DURING build because the
# make "all" target actually installs the gnu tools before building the
# pilot resources
#

# PalmOS3 SDK from http://palm.3com.com/devzone/tools/winsdk30.zip

DISTNAME=       prc-tools.0.5.0
PKGNAME=	prc-tools-0.5.0
CATEGORIES=     devel pilot
MASTER_SITES=   ftp://ryeham.ee.ryerson.ca/pub/PalmOS/ \
		${MASTER_SITE_GNU}
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		binutils-2.7.tar.gz gdb-4.16.tar.gz gcc-2.7.2.2.tar.gz

MAINTAINER=     angelos@openbsd.org

# install things in ${LOCALBASE}/pilot to avoid conflicts
PREFIX=		${LOCALBASE}/pilot
WRKSRC=		${WRKDIR}/${PKGNAME}

USE_PERL5=	yes
ALL_TARGET=	gnutools all
MAN1=		build-prc.1 cccp.1 configure.1 \
		obj-res.1 pilrc.1 txt2bitm.1 \
		m68k-palmos-coff-ar.1 \
		m68k-palmos-coff-as.1 \
		m68k-palmos-coff-c++filt.1 \
		m68k-palmos-coff-gcc.1 \
		m68k-palmos-coff-gdb.1 \
		m68k-palmos-coff-ld.1 \
		m68k-palmos-coff-nlmconv.1 \
		m68k-palmos-coff-nm.1 \
		m68k-palmos-coff-objcopy.1 \
		m68k-palmos-coff-objdump.1 \
		m68k-palmos-coff-ranlib.1 \
		m68k-palmos-coff-size.1 \
		m68k-palmos-coff-strings.1 \
		m68k-palmos-coff-strip.1
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
pre-build:
		@if ${ECHO} ${CFLAGS} | ${GREP} -- "-m486" > /dev/null ; then \
			${ECHO} "ERROR: You have \"-m486\" defined some-" ; \
			${ECHO} "       where, either in /etc/make.conf" ; \
			${ECHO} "       or in the CFLAGS environment" ; \
			${ECHO} "       variable.  This will cause this" ; \
			${ECHO} "       port to not build properly.  Please" ; \
			${ECHO} "       fix this and re-run make." ; \
			exit 1 ; \
		else \
			${ECHO} "Your environment looks OK." ; \
		fi

# after we apply freebsd patches, apply prc-tool's patches to gcc/gdb/...
post-patch:
		(cd ${WRKSRC} ; make patch)

# the info files are redundant
post-install:
		${RM} -rf ${PREFIX}/info
		(cd ${PREFIX}/bin; strip ${STRIP})
		${ECHO} ""
		${ECHO} "	To upgrade to the PalmOS3 SDK, download "
		${ECHO} "	http://palm.3com.com/devzone/tools/winsdk30.zip "
		${ECHO} "	and after unzipping it, move the directory 'Incs' "
		${ECHO} "	to ${PREFIX}/m68k-palmos-coff/include/, under "
		${ECHO} "	the name 'PalmOS3'. Then delete the link "
		${ECHO} "	PalmOS -> PalmOS2, and make a symbolic link "
		${ECHO} "	PalmOS -> PalmOS3 in the same directory. "
		${ECHO} ""
		${ECHO} "	You will need to rename the file PalmOS3/UI/Event.H "
		${ECHO} "	to PalmOS3/UI/Event.h, and remove the nested "
		${ECHO} "	comment at the begining of PalmOS3/UI/Category.h "
		${ECHO} "	Also, you should edit PalmOS3/System/Unix/unix_string.h "
		${ECHO} "	and change the include from StdArg.h to stdarg.h "
		${ECHO} ""
.include <bsd.port.mk>
