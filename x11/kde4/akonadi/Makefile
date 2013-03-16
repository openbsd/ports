# $OpenBSD: Makefile,v 1.5 2013/03/16 16:25:27 bcallah Exp $

VERSION =		1.3.1
COMMENT =		kde pim access libraries
DISTNAME =		akonadi-${VERSION}

MASTER_SITES =		${MASTER_SITE_KDE:=/stable/akonadi/src/}
SHARED_LIBS += 		akonadiprivate 0.0 		# 1.0
SHARED_LIBS += 		akonadiprotocolinternals 0.0	# 1.0

LIB_DEPENDS +=		databases/soprano \
			devel/boost
BUILD_DEPENDS +=	devel/automoc

WANTLIB += boost_program_options-mt c lib/qt4/QtDBus lib/qt4/QtNetwork \
	lib/qt4/QtSql lib/qt4/QtXml m pthread soprano stdc++

.include <bsd.port.mk>
