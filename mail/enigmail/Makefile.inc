# $OpenBSD: Makefile.inc,v 1.6 2011/07/24 07:35:14 landry Exp $

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

BUILD_DEPENDS =	${MOZAPP_PKGSTEM}:${MOZAPP_PKGPATH}:configure \
		archivers/unzip
RUN_DEPENDS =	security/gnupg
LIB_DEPENDS =	${MOZAPP_PKGPATH},-main
WANTLIB =	c m nspr4 plc4 plds4 stdc++ ${MOZAPP_DIR}/xpcom ${MOZAPP_DIR}/xul ${MOZAPP_DIR}/mozalloc

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
	# strip off the TARGET_XPCOM_ABI variable part
	perl -pi -e 's|(genxpi.*) (\$$\(TARGET_XPCOM_ABI\))|\1 "\2"|g' \
		${WRKDIST}/Makefile.in
	# strip xpcomABI from platform and ABI in chrome.manifest
	perl -pi -e 's|[-_]?\$${xpcomAbi}||g ; s| ABI=.\$${platform}.||g' ${WRKDIST}/genxpi
	mv ${WRKDIST} ${MOZBASE}/mailnews/extensions

do-build:
	cd ${MOZBASE}/mozilla && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} tier_base
	cd ${MOZBASE}/mozilla && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} tier_js
	cd ${MOZBASE}/mozilla && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} tier_platform
	cd ${MOZBASE} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} export
	cd ${WRKSRC} && ./makemake -r
	# hax: switch to jar format to generate enigmail.jar
	perl -pi -e 's|MOZ_CHROME_FILE_FORMAT.*|MOZ_CHROME_FILE_FORMAT=jar|' ${MOZBASE}/config/autoconf.mk
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM}
	cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} xpi

do-install:
	${INSTALL_DATA_DIR} ${GLOBALDIR}
	unzip -q ${MOZBIN}/${ENIGMAIL_XPI} -d ${GLOBALDIR}
	# enigmail 1.2 works in seamonkey 2.2 so adjust install.rdf
	perl -pi -e 's|<em:maxVersion>2.1.*</em:maxVersion>|<em:maxVersion>2.2.*</em:maxVersion>|' ${GLOBALDIR}/install.rdf
