# $OpenBSD: Makefile,v 1.10 2016/03/19 23:44:54 naddy Exp $

COMMENT =	KDE bindings for Perl
DISTNAME =	perlkde-${MODKDE4_VERSION}
PKGNAME =	p5-kde-${MODKDE4_VERSION}
REVISION =	0

WANTLIB =  c m perl pthread util
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork
WANTLIB += lib/qt4/QtOpenGL lib/qt4/QtSql lib/qt4/QtSvg lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/smokebase ${KDE4LIB}/smokekate
WANTLIB += ${KDE4LIB}/smokekdecore ${KDE4LIB}/smokekdeui
WANTLIB += ${KDE4LIB}/smokekfile ${KDE4LIB}/smokekhtml ${KDE4LIB}/smokekio
WANTLIB += ${KDE4LIB}/smokeknewstuff2 ${KDE4LIB}/smokeknewstuff3
WANTLIB += ${KDE4LIB}/smokekparts ${KDE4LIB}/smokektexteditor
WANTLIB += ${KDE4LIB}/smokekutils ${KDE4LIB}/smokenepomuk
WANTLIB += ${KDE4LIB}/smokenepomukquery ${KDE4LIB}/smokeokular
WANTLIB += ${KDE4LIB}/smokeplasma ${KDE4LIB}/smokeqtcore
WANTLIB += ${KDE4LIB}/smokeqtgui ${KDE4LIB}/smokeqtnetwork
WANTLIB += ${KDE4LIB}/smokesolid ${KDE4LIB}/smokesoprano
WANTLIB += ${KDE4LIB}/smokesopranoclient ${KDE4LIB}/smokesopranoserver
WANTLIB += ${KDE4LIB}/smokeakonadi ${KDE4LIB}/smokeattica

MODULES =	perl
MODKDE4_USE =	libs

BUILD_DEPENDS =	${MODKDE4_DEP_DIR}/okular>=${MODKDE4_DEP_VERSION} \
		${MODKDE4_DEP_DIR}/p5-qt>=${MODKDE4_DEP_VERSION} \
		${MODKDE4_DEP_DIR}/pimlibs>=${MODKDE4_DEP_VERSION}

RUN_DEPENDS =	${MODKDE4_DEP_DIR}/p5-qt>=${MODKDE4_DEP_VERSION}

LIB_DEPENDS = 	${MODKDE4_DEP_DIR}/smokekde>=${MODKDE4_DEP_VERSION}

CONFIGURE_ARGS =	-DCUSTOM_PERL_SITE_ARCH_DIR=${LOCALBASE}/${P5ARCH}

# Avoid clashing Perl do_open and do_close with GCC's locale_facets.h
post-patch:
	@echo "====>  Removing extra Perl defines from:" >&2
	@cd ${WRKSRC} && find . -name '*.cpp' | sort | while read F; do \
		awk -f ${FILESDIR}/undefperl.awk <"$$F" >"$$F".undef || exit 1; \
		if cmp -s "$$F" "$$F".undef; then \
			rm "$$F".undef; \
		else \
			echo "\\t$${F#./}" >&2; \
			cp "$$F" "$$F".beforeundef && mv "$$F".undef "$$F"; \
		fi \
	done

.include <bsd.port.mk>
