# $OpenBSD: Makefile,v 1.5 2014/07/09 20:03:29 zhuk Exp $

COMMENT =	Qt4 bindings for Perl
DISTNAME =	perlqt-${MODKDE4_VERSION}
PKGNAME =	p5-qt-${MODKDE4_VERSION}

WANTLIB =  c m perl pthread util
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/smokebase ${KDE4LIB}/smokephonon
WANTLIB += ${KDE4LIB}/smokeqimageblitz ${KDE4LIB}/smokeqsci
WANTLIB += ${KDE4LIB}/smokeqt3support ${KDE4LIB}/smokeqtcore
WANTLIB += ${KDE4LIB}/smokeqtdbus ${KDE4LIB}/smokeqtdeclarative
WANTLIB += ${KDE4LIB}/smokeqtgui ${KDE4LIB}/smokeqthelp
WANTLIB += ${KDE4LIB}/smokeqtmultimedia ${KDE4LIB}/smokeqtnetwork
WANTLIB += ${KDE4LIB}/smokeqtopengl ${KDE4LIB}/smokeqtscript
WANTLIB += ${KDE4LIB}/smokeqtsql ${KDE4LIB}/smokeqtsvg
WANTLIB += ${KDE4LIB}/smokeqttest ${KDE4LIB}/smokeqtuitools
WANTLIB += ${KDE4LIB}/smokeqtwebkit ${KDE4LIB}/smokeqtxml
WANTLIB += ${KDE4LIB}/smokeqtxmlpatterns ${KDE4LIB}/smokeqwt

MODULES =	x11/kde4 perl
MODKDE4_USE =

LIB_DEPENDS = 	${MODKDE4_DEP_DIR}/smokeqt>=${MODKDE4_DEP_VERSION}

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

# XXX: Should find the right way; probably looking in libproxy port could help.
post-install:
	ln -fs libQtCore4.so ${PREFIX}/${P5ARCH}/auto/QtCore4/QtCore4.so

.include <bsd.port.mk>
