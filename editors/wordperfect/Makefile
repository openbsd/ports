# $OpenBSD: Makefile,v 1.23 2004/01/25 21:10:50 pvalchev Exp $

COMMENT=	"graphical word processor ported from Windows"

ONLY_FOR_ARCHS=	i386

FAKE=		No

PKGNAME=	wordperfect-8.0
CATEGORIES=     editors

BROKEN=		"Home page does not exist anymore.  Alternate 400mb iso exists."

PERMIT_PACKAGE_CDROM=	commercial
PERMIT_PACKAGE_FTP=	commercial
PERMIT_DISTFILES_CDROM=	commercial
PERMIT_DISTFILES_FTP=	commercial

MASTER_SITES=	see_do-fetch_target

DISTNAME=	WordPerfect

RUN_DEPENDS=    :redhat_base-*:emulators/redhat/base

IS_INTERACTIVE=	yes

NO_BUILD=	Yes
NO_PACKAGE=	interactive port

WRKDIST=	${WRKDIR}

FETCH_MANUALLY = ""
FETCH_MANUALLY+= "  The source to this port may not be automatically fetched"
FETCH_MANUALLY+= "  due to licensing restrictions. You MUST fetch the source"
FETCH_MANUALLY+= "  (http://linux.corel.com/products/wp8/download.htm)"
FETCH_MANUALLY+= "  manually after reading and agreeing to the license at:"
FETCH_MANUALLY+= ""
FETCH_MANUALLY+= "    http://linux.corel.com/products/wp8/download_eula.htm"
FETCH_MANUALLY+= ""
FETCH_MANUALLY+= "  Once ${DISTFILES} has been downloaded, move it to ${FULLDISTDIR}"
FETCH_MANUALLY+= "  and then restart this build."
FETCH_MANUALLY+= ""

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
