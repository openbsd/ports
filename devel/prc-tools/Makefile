# $OpenBSD: Makefile,v 1.8 2000/03/24 22:11:40 espie Exp $

DISTNAME=       prc-tools.0.5.0
PKGNAME=	prc-tools-0.5.0
CATEGORIES=     devel pilot
NEED_VERSION=	1.191
MASTER_SITES=   ftp://ryeham.ee.ryerson.ca/pub/PalmOS/ \
		${MASTER_SITE_GNU}
DISTFILES=	${DISTNAME}${EXTRACT_SUFX} \
		binutils-2.7.tar.gz gdb-4.16.tar.gz gcc-2.7.2.2.tar.gz

MAINTAINER=     angelos@openbsd.org

LICENSE_TYPE=		GPL
PERMIT_PACKAGE_CDROM=	YES
PERMIT_PACKAGE_FTP=	YES
PERMIT_DISTFILES_CDROM=	YES
PERMIT_DISTFILES_FTP=	YES

# install things in ${LOCALBASE}/pilot to avoid conflicts
PREFIX=		${LOCALBASE}/pilot
WRKDIST=	${WRKDIR}/${PKGNAME}

USE_PERL5=	yes
ALL_TARGET=	gnutools all
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

# after we apply freebsd patches, apply prc-tool's patches to gcc/gdb/...
post-patch:
		(cd ${WRKSRC} ; make patch)

# the info files are redundant
post-install:
		rm -rf ${PREFIX}/info
		(cd ${PREFIX}/bin; strip ${STRIP})
		@echo ""
		@echo "	To upgrade to the PalmOS3 SDK, download "
		@echo "	http://palm.3com.com/devzone/tools/winsdk30.zip "
		@echo "	and after unzipping it, move the directory 'Incs' "
		@echo "	to ${PREFIX}/m68k-palmos-coff/include/, under "
		@echo "	the name 'PalmOS3'. Then delete the link "
		@echo "	PalmOS -> PalmOS2, and make a symbolic link "
		@echo "	PalmOS -> PalmOS3 in the same directory. "
		@echo ""
		@echo "	You will need to rename the file PalmOS3/UI/Event.H "
		@echo "	to PalmOS3/UI/Event.h, and remove the nested "
		@echo "	comment at the begining of PalmOS3/UI/Category.h "
		@echo "	Also, you should edit PalmOS3/System/Unix/unix_string.h "
		@echo "	and change the include from StdArg.h to stdarg.h "
		@echo ""
.include <bsd.port.mk>
