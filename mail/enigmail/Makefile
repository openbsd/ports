# $OpenBSD: Makefile,v 1.23 2009/11/17 23:08:35 ajacoutot Exp $

SHARED_ONLY=	Yes

COMMENT=	GnuPG extension for Thunderbird

VER=		0.96.0
DISTNAME=	enigmail-${VER}
PKGNAME=	${DISTNAME}p0
CATEGORIES=	mail security

SHARED_LIBS=	enigmime	14.0

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

LIB_DEPENDS=	mozilla-thunderbird/xpcom,mozilla-thunderbird/xpcom_compat,mozilla-thunderbird/xpcom_core:mozilla-thunderbird-2.0.0.23p0:${THUNDERBIRD_DIR}
WANTLIB=	c m nspr4 plc4 plds4

USE_X11=	Yes
USE_GMAKE=	Yes
NO_REGRESS=	Yes

MOZBASE=	${WRKDIR}/${THUNDERBIRD_DIR}/mozilla
MOZBIN=		${MOZBASE}/dist/bin
WRKDIST=	${WRKDIR}/enigmail
WRKSRC=		${MOZBASE}/mailnews/extensions/enigmail

GNU_ARCH=	${MACHINE_ARCH:S/amd64/x86_64/}
ENIGMAIL_XPI=	${DISTNAME}-${OPSYS:L}-${GNU_ARCH}.xpi

# unzip ${ENIGMAIL_XPI} and inspect install.rdf for GUID
GUID=		{847b3a00-7ab1-11d4-8f02-006008948af5}
GLOBALDIR=	${PREFIX}/mozilla-thunderbird/extensions/${GUID}

SUBST_VARS=	GUID

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

.include <bsd.port.mk>
