# $OpenBSD: Makefile,v 1.25 2010/04/03 09:46:09 landry Exp $

SHARED_ONLY=	Yes

COMMENT-main=		GnuPG extension for Thunderbird
COMMENT-seamonkey=	GnuPG extension for Seamonkey

VER=		1.0.1
DISTNAME=	enigmail-${VER}
PKGNAME-main=	enigmail-${VER}
PKGNAME-seamonkey=	enigmail-seamonkey-${VER}
CATEGORIES=	mail security

MULTI_PACKAGES=	-main -seamonkey

# must be in sync with SO_VERSION in
# mail/mozilla-thunderbird and www/seamonkey
SHARED_LIBS=	enigmime	15.0

HOMEPAGE=	http://enigmail.mozdev.org/

# mozilla public license or GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.mozilla-enigmail.org/download/source/

THUNDERBIRD_DIR=mail/mozilla-thunderbird
BUILD_DEPENDS=	::${THUNDERBIRD_DIR}:configure \
		::archivers/unzip
RUN_DEPENDS=	::security/gnupg

LIB_DEPENDS-main=	mozilla-thunderbird/xpcom,mozilla-thunderbird/xpcom_core:mozilla-thunderbird->=3.0.4:${THUNDERBIRD_DIR}
LIB_DEPENDS-seamonkey=	seamonkey/xpcom,seamonkey/xpcom_core:seamonkey->=2.0.4:www/seamonkey
WANTLIB=	c m nspr4 plc4 plds4

USE_X11=	Yes
USE_GMAKE=	Yes
NO_REGRESS=	Yes

MOZBASE=	${WRKDIR}/${THUNDERBIRD_DIR}/comm-1.9.1
MOZBIN=		${MOZBASE}/mozilla/dist/bin
WRKDIST=	${WRKDIR}/enigmail
WRKSRC=		${MOZBASE}/mailnews/extensions/enigmail

GNU_ARCH=	${MACHINE_ARCH:S/amd64/x86_64/}
ENIGMAIL_XPI=	${DISTNAME:S/.1//}-${OPSYS:L}-${GNU_ARCH}.xpi

# unzip ${ENIGMAIL_XPI} and inspect install.rdf for GUID
GUID=		{847b3a00-7ab1-11d4-8f02-006008948af5}
GLOBALDIR=	${PREFIX}/mozilla-thunderbird/extensions/${GUID}
SEAMONKEYDIR=	${PREFIX}/seamonkey/extensions/${GUID}

SUBST_VARS=	GUID

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
	${INSTALL_DATA_DIR} ${SEAMONKEYDIR}
	unzip -q ${MOZBIN}/${ENIGMAIL_XPI} -d ${SEAMONKEYDIR}
	cp ${GLOBALDIR}/platform/OpenBSD*/components/libenigmime.so.* \
		${GLOBALDIR}/components/
	mv ${GLOBALDIR}/platform/OpenBSD*/components/libenigmime.so.* \
		${SEAMONKEYDIR}/components/
	rm -Rf ${GLOBALDIR}/platform/

.include <bsd.port.mk>
