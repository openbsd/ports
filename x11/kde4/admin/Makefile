# $OpenBSD: Makefile,v 1.11 2013/11/24 19:56:30 zhuk Exp $

COMMENT =	KDE local system administration tools
DISTNAME =	kdeadmin-${MODKDE4_VERSION}
REVISION =	1

# From configure:
# -- rpm and deb file plugins necessary in system != UNIX ?
# -- PORT kfile plugins!!!
#
# TODO: ksystemlog: adapt "kernel" mode to OpenBSD.

WANTLIB =  c m pthread stdc++
WANTLIB += lib/qt4/QtDBus lib/qt4/QtGui lib/qt4/QtNetwork lib/qt4/QtSvg
WANTLIB += lib/qt4/QtXml
WANTLIB += ${KDE4LIB}/kdeui ${KDE4LIB}/kio ${KDE4LIB}/kldap ${KDE4LIB}/kntlm

MODKDE4_USE =	pim

RUN_DEPENDS =	devel/desktop-file-utils \
		x11/gtk+2,-guic

.include <bsd.port.mk>
