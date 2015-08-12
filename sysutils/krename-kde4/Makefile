# $OpenBSD: Makefile,v 1.5 2015/08/12 10:00:50 zhuk Exp $

COMMENT =	powerful batch file renamer for KDE4

DISTNAME =	krename-4.0.9
SRCFILES =	${DISTNAME}.tar.bz2
DOCFILES =	krename-3.0.12.pdf \
		krename-3.0.3-de.pdf \
		krename-3.0.3-fr.pdf \
		krename-3.0.3-ru.pdf
DISTFILES =	${SRCFILES} ${DOCFILES}
EXTRACT_ONLY =	${SRCFILES}
REVISION =	2

CATEGORIES =	sysutils x11
HOMEPAGE =	http://www.krename.net/
MAINTAINER =	Vadim Zhukov <zhuk@openbsd.org>
PORTROACH =	limit:^4

PKGSPEC =	krename->=3.9

WANTLIB =  c freetype m pthread
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/kjsapi
WANTLIB += exiv2 podofo tag

# GPLv2+
PERMIT_PACKAGE_CDROM =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=krename/}

MODULES =		x11/kde4 devel/gettext
MODGETTEXT_TOOLS =	Yes

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+3,-guic

LIB_DEPENDS =	audio/taglib \
		graphics/exiv2 \
		textproc/podofo

TEST_IS_INTERACTIVE =	X11

post-install:
	${INSTALL_DATA_DIR} ${PREFIX}/share/doc/krename
	${INSTALL_DATA} ${DOCFILES:S@^@${DISTDIR}/@} ${PREFIX}/share/doc/krename

do-test:
	cd ${WRKBUILD}/src && ./krename --test

.include <bsd.port.mk>
