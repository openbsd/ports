# $OpenBSD: Makefile,v 1.14 2001/01/05 16:35:59 brad Exp $

ONLY_FOR_ARCHS=	i386

FAKE=		No

PKGNAME=	wordperfect-8.0
CATEGORIES=     editors
NEED_VERSION=	1.336

MAINTAINER=	Dug Song <dugsong@monkey.org>

PERMIT_PACKAGE_CDROM=	commercial
PERMIT_PACKAGE_FTP=	commercial
PERMIT_DISTFILES_CDROM=	commercial
PERMIT_DISTFILES_FTP=	commercial

MASTER_SITES=	see_do-fetch_target

DISTNAME=	WordPerfect

RUN_DEPENDS=    /emul/linux/lib/libc.so.5::emulators/linux_lib

IS_INTERACTIVE=	yes

NO_BUILD=	Yes
NO_PACKAGE=	interactive port

WRKDIST=	${WRKDIR}

do-fetch:
	@if [ ! -f ${DISTDIR}/${DISTFILES} ]; then \
	   echo "" ; \
	   echo "  The source to this port may not be automatically fetched" ; \
	   echo "  due to licensing restrictions. You MUST fetch the source" ; \
	   echo "  (http://linux.corel.com/products/wp8/download.htm)" ; \
	   echo "  manually after reading and agreeing to the license at:" ; \
	   echo "" ; \
	   echo "    http://linux.corel.com/products/wp8/download_eula.htm" ; \
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
	echo "   http://venus.corel.com/nasapps/wp8linuxreg/register.html" ; \
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
