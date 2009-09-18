# $OpenBSD: Makefile,v 1.11 2009/09/18 21:42:53 martynas Exp $

SHARED_ONLY=	Yes

COMMENT=	GnuPG extension for SeaMonkey

VER=		0.96.0
DISTNAME=	enigmail-${VER}
PKGNAME=	enigmail-seamonkey-${VER}

CATEGORIES=	mail security

SHARED_LIBS=	enigmime	10.0

HOMEPAGE=	http://enigmail.mozdev.org/

# mozilla public license or GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.mozilla-enigmail.org/download/source/

SEAMONKEY_DIR=	www/seamonkey
BUILD_DEPENDS=	::${SEAMONKEY_DIR}:configure \
		::archivers/unzip
RUN_DEPENDS=	::security/gnupg

LIB_DEPENDS=	seamonkey/xpcom,seamonkey/xpcom_compat,seamonkey/xpcom_core:seamonkey-1.1.18:${SEAMONKEY_DIR}
WANTLIB=	c m nspr4 plc4 plds4

USE_X11=	Yes
USE_GMAKE=	Yes
NO_REGRESS=	Yes

MOZBASE=	${WRKDIR}/${SEAMONKEY_DIR}/mozilla
MOZBIN=		${MOZBASE}/dist/bin
WRKDIST=	${WRKDIR}/enigmail
WRKSRC=		${MOZBASE}/mailnews/extensions/enigmail

GNU_ARCH=	${MACHINE_ARCH:S/amd64/x86_64/}
ENIGMAIL_XPI=	${DISTNAME}-${OPSYS:L}-${GNU_ARCH}.xpi

# unzip ${ENIGMAIL_XPI} and inspect install.rdf for GUID
GUID=		{847b3a00-7ab1-11d4-8f02-006008948af5}
GLOBALDIR=	${PREFIX}/seamonkey

post-extract:
	@perl -pi -e 's|(genxpi.*) (\$$\(TARGET_XPCOM_ABI\))|\1 "\2"|g' \
		${WRKDIST}/Makefile.in
	@perl -pi -e 's|[-_]?\$${xpcomAbi}||g' ${WRKDIST}/genxpi
	@mv ${WRKDIST} ${MOZBASE}/mailnews/extensions

do-build:
	@cd ${MOZBASE} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} export
	@cd ${MOZBASE}/modules/libreg && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM}
	@cd ${MOZBASE}/xpcom/string && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM}
	@cd ${MOZBASE}/xpcom && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM}
	@cd ${MOZBASE}/xpcom/obsolete && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM}
	@cd ${WRKSRC} && ./makemake -r
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM}
	@cd ${WRKSRC} && ${SETENV} ${MAKE_ENV} ${MAKE_PROGRAM} xpi

do-install:
	${INSTALL_DATA_DIR} ${GLOBALDIR}
	unzip -q ${MOZBIN}/${ENIGMAIL_XPI} -d ${GLOBALDIR}
	mv ${GLOBALDIR}/platform/OpenBSD*/components/libenigmime.so.* \
		${GLOBALDIR}/components/
	rm ${GLOBALDIR}/{chrome.manifest,install.rdf}
	${INSTALL_SCRIPT} ${FILESDIR}/regchrome ${GLOBALDIR}/chrome/

.include <bsd.port.mk>
