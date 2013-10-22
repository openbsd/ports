# $OpenBSD: Makefile.inc,v 1.3 2013/10/22 11:34:00 zhuk Exp $

LANGS = af ar az be bg bn br bs ca cs csb cy da de el en_GB eo es et eu fa \
	fi fr fy ga gl he hi hr hu is it ja kk km ko lt lv mk mn ms nb nds \
	nl nn pa pl pt pt_BR ro ru rw se sk sl sr sr@Latn ss sv ta te tg th \
	tr uk uz uz@cyrillic vi wa zh_CN zh_TW


REVISION = 3

.for i in ${LANGS}
SUPDISTFILES += kde-i18n-$i-${VERSION}.tar.bz2
.endfor

DISTFILES = kde-i18n-$L-${VERSION}.tar.bz2
WRKDIST = ${WRKDIR}/kde-i18n-$L-${VERSION}
DISTNAME = kde-i18n-$L-${VERSION}
COMMENT = $L translations for KDE
DOC = ${MODKDE_HTML_SUBDIR}/$L/
LOC = share/locale/$L/LC_MESSAGES/
I = index.docbook
C = index.cache.bz2

SUBST_VARS = I C DOC LOC

CATEGORIES =		x11 x11/kde
VERSION =		3.5.10
MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC}
MASTER_SITES =	${MASTER_SITE_KDE:=stable/3.5.10/src/kde-i18n/}

BUILD_DEPENDS = x11/kde/libs3
RUN_DEPENDS += x11/kde/libs3

MODKDE_VERSION =
CONFIGURE_STYLE = gnu

MAKE_FLAGS += MEINPROC=
CONFIGURE_ARGS += -C

PKGDIR = ${.CURDIR}/../pkg
DESCR = ${PKGDIR}/DESCR
PLIST = ${PKGDIR}/PLIST-$L
CHECKSUM_FILE = ${.CURDIR}/../distinfo

MODKDE_NODEBUG = Yes

# XXX have to do this manually here...
.include "${.CURDIR}/../../Makefile.inc"
