# $OpenBSD: Makefile.inc,v 1.6 2013/12/08 19:13:32 zhuk Exp $

IGNORE_SILENT =		Yes
COMMENT =		K Desktop Environment, language localization pack
DISTNAME =		kde-l10n-${KDE_L10N_LANG}-${MODKDE4_VERSION}

MODKDE4_RESOURCES =	Yes
MODKDE4_USE =		libs

.include "${.CURDIR}/../Makefile.langs"

.for L in ${ALL_LANGS}
SUPDISTFILES +=	kde-l10n-${L}-${MODKDE4_VERSION}${EXTRACT_SUFX}
.endfor

RUN_DEPENDS +=	x11/gtk+2,-guic

MASTER_SITES =	${MASTER_SITE_KDE:=stable/${MODKDE4_VERSION}/src/kde-l10n/}

KDE_LANG_STR =	${KDE_L10N_LANG} language
KDE3_I18N_PKG =	kde-i18n-${KDE_L10N_LANG}
SUBST_VARS =	KDE_LANG_STR KDE3_I18N_PKG

PKGDIR =	${.CURDIR}/../pkg
DESCR =		${PKGDIR}/DESCR
PLIST =		${PKGDIR}/PLIST-${KDE_L10N_LANG}
CHECKSUM_FILE =	${.CURDIR}/../distinfo
PKG_ARGS =	-f ${PKGDIR}/PFRAG.conflict

MODULES +=	devel/gettext
NO_TEST =	Yes
CONFIGURE_ENV =	CFLAGS=-I${PREFIX}/include \
		LDFLAGS="-L${PREFIX}/lib -liconv -lintl"

MODKDE4_FIX_GETTEXT =	Yes

CONFIGURE_ARGS +=	-DCMAKE_POLICY_DEFAULT_CMP0014=OLD

post-install:
	rm -Rf ${PREFIX}/man/${KDE_L10N_LANG}/

# XXX have to do this manually here...
.include "${.CURDIR}/../../Makefile.inc"
