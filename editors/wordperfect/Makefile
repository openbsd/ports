# $OpenBSD: Makefile,v 1.6 2000/02/25 21:17:15 turan Exp $

PKGNAME=	wordperfect-8.0
CATEGORIES=     editors

MAINTAINER=	dugsong@monkey.org

LICENSE_TYPE=		COMM
PERMIT_PACKAGE_CDROM=	commercial
PERMIT_PACKAGE_FTP=	commercial
PERMIT_DISTFILES_CDROM=	commercial
PERMIT_DISTFILES_FTP=	commercial

MASTER_SITES=	see_do-fetch_target

DISTNAME=	WordPerfect

NEED_VERSION=	1.191
NO_CDROM=	"LIC: redistribution not allowed"
MIRROR_DISTFILE=no

RUN_DEPENDS=    /emul/linux/lib/libc.so.5:${PORTSDIR}/emulators/linux_lib

ONLY_FOR_ARCHS=	i386

IS_INTERACTIVE=	yes

WRKBUILD=	${WRKDIR}
NO_CONFIGURE=	yes
NO_BUILD=	yes
NO_PACKAGE=	interactive port

do-fetch:
	@if [ ! -f ${DISTDIR}/${DISTFILES} ]; then \
	   echo "" ; \
	   echo "  The source to this port may not be automatically fetched" ; \
	   echo "  due to licensing restrictions. You MUST fetch the source" ; \
	   echo "  manually after reading and agreeing to the license at:" ; \
	   echo "" ; \
	   echo "      http://linux.corel.com/linux8/download.htm" ; \
	   echo "" ; \
	   echo "  Once ${DISTFILES} has been downloaded, move it to ${DISTDIR}" ; \
	   echo "  and then restart this build." ; \
	   echo "" ; \
	   exit 1 ; \
	fi

post-extract:
	@cd ${WRKDIR} ; for file in b* g* ; do tar xf $$file ; done

pre-install:
	@echo "" ; \
	echo "   This installation of WordPerfect will expire in 90 days," ; \
	echo "   unless you retrieve a free registration key from" ; \
	echo "" ; \
	echo "         https://livewire.corel.com/wp8LinuxReg/" ; \
	echo "" ; \
	echo "   to register your copy TODAY. Do this now!" ; \
	echo "" ; \
	echo "   The recommended installation directory for WordPerfect is" ; \
	echo "   /usr/local/corel"

do-install:
	@mkdir -p ${WRKDIR}/tmp
	@cd ${WRKDIR} ; ${SCRIPTS_ENV} TMPDIR=${WRKDIR}/tmp ${SH} Runme
	@sed 's#y0y0y0#${PREFIX}/corel#' ${FILESDIR}/xwp > ${WRKDIR}/xwp
	@if test -f ${PREFIX}/bin/xwp ; then \
	   mv ${PREFIX}/bin/xwp ${PREFIX}/bin/xwp.old ; fi
	${INSTALL_SCRIPT} ${WRKDIR}/xwp ${PREFIX}/bin


.include <bsd.port.mk>
