# $OpenBSD: Makefile,v 1.1.1.1 2006/10/03 21:10:16 steven Exp $

.if ${MACHINE_ARCH} == "sparc64"
BROKEN=		"Thunderbird hangs when accessing items from the OpenPGP menu"
.endif

COMMENT=	"GnuPG extension for Thunderbird"

VER=		0.94.1
DISTNAME=	enigmail-${VER}
CATEGORIES=	mail security

HOMEPAGE=	http://enigmail.mozdev.org/

# mozilla public license or GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	http://www.mozilla-enigmail.org/downloads/src/

THUNDERBIRD_DIR=mail/mozilla-thunderbird
BUILD_DEPENDS=	::${THUNDERBIRD_DIR}:configure
RUN_DEPENDS=	:mozilla-thunderbird->=1.5:${THUNDERBIRD_DIR} \
		::security/gnupg

USE_X11=	Yes
USE_GMAKE=	Yes
NO_REGRESS=	Yes
SUBST_VARS=	VER ENIGMAIL_XPI GNU_ARCH

MOZBASE=	${WRKDIR}/${THUNDERBIRD_DIR}/mozilla
MOZBIN=		${MOZBASE}/dist/bin
WRKDIST=	${WRKDIR}/enigmail
WRKSRC=		${MOZBASE}/mailnews/extensions/enigmail

GNU_ARCH=	${MACHINE_ARCH:S/amd64/x86_64/}
ENIGMAIL_XPI=	${DISTNAME}-${OPSYS:L}-${GNU_ARCH}.xpi

post-extract:
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
	${INSTALL_DATA_DIR} ${PREFIX}/share/enigmail
	${INSTALL_DATA} ${MOZBIN}/${ENIGMAIL_XPI} ${PREFIX}/share/enigmail

.include <bsd.port.mk>
