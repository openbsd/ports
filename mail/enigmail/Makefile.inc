# $OpenBSD: Makefile.inc,v 1.2 2010/08/25 06:34:50 ajacoutot Exp $

SHARED_ONLY =	Yes

DISTNAME =	enigmail-${VERSION}
CATEGORIES =	mail security

HOMEPAGE =	http://enigmail.mozdev.org/

# mozilla public license or GPL
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://www.mozilla-enigmail.org/download/source/

BUILD_DEPENDS =	::${MOZAPP_PKGPATH}:configure \
		::archivers/unzip
RUN_DEPENDS =	:gnupg-<2:security/gnupg
LIB_DEPENDS =	::${MOZAPP_PKGPATH},-main
WANTLIB =	c m nspr4 plc4 plds4 stdc++ ${MOZAPP_DIR}/xpcom ${MOZAPP_DIR}/xpcom_core

USE_X11 =	Yes
USE_GMAKE =	Yes
NO_REGRESS =	Yes

MOZBASE =	${WRKDIR}/${MOZAPP_PKGPATH}/comm-${MOZAPP_BRANCH}
MOZBIN =	${MOZBASE}/mozilla/dist/bin
WRKDIST =	${WRKDIR}/enigmail
WRKSRC =	${MOZBASE}/mailnews/extensions/enigmail

GLOBALDIR =	${PREFIX}/${MOZAPP_DIR}/extensions/${GUID}
GNU_ARCH =	${MACHINE_ARCH:S/amd64/x86_64/}

# unzip ${ENIGMAIL_XPI} and inspect install.rdf for GUID
GUID =		{847b3a00-7ab1-11d4-8f02-006008948af5}
SUBST_VARS =	GUID

post-extract:
	@perl -pi -e 's|(genxpi.*) (\$$\(TARGET_XPCOM_ABI\))|\1 "\2"|g' \
		${WRKDIST}/Makefile.in
	@perl -pi -e 's|[-_]?\$${xpcomAbi}||g' ${WRKDIST}/genxpi
	@mv ${WRKDIST} ${MOZBASE}/mailnews/extensions

do-build:
	@cd ${MOZBASE} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} export
	@cd ${MOZBASE}/mozilla/modules/libreg && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM}
	@cd ${MOZBASE}/mozilla/xpcom/string && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM}
	@cd ${MOZBASE}/mozilla/xpcom && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM}
	@cd ${MOZBASE}/mozilla/xpcom/obsolete && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM}
	@cd ${WRKSRC} && ./makemake -r
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM}
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} xpi

do-install:
	${INSTALL_DATA_DIR} ${GLOBALDIR}
	unzip -q ${MOZBIN}/${ENIGMAIL_XPI} -d ${GLOBALDIR}
	cp ${GLOBALDIR}/platform/OpenBSD*/components/lib*.so.* \
		${GLOBALDIR}/components/
