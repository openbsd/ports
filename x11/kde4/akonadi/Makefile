# $OpenBSD: Makefile,v 1.1.1.1 2010/06/18 09:30:50 espie Exp $

VERSION =		1.3.1
COMMENT =		kde pim access libraries
DISTNAME =		akonadi-${VERSION}

MASTER_SITES =		http://download.akonadi-project.org/
SHARED_LIBS += 		akonadiprivate 0.0 		# 1.0
SHARED_LIBS += 		akonadiprotocolinternals 0.0	# 1.0

LIB_DEPENDS +=	soprano::databases/soprano \
		boost_program_options-mt::devel/boost
BUILD_DEPENDS +=	::x11/kde4/automoc

WANTLIB +=	QtDBus QtNetwork QtSql QtXml
WANTLIB +=	c m pthread stdc++

.include <bsd.port.mk>
