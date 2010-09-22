# $OpenBSD: Makefile,v 1.3 2010/09/22 06:58:02 landry Exp $

COMMENT =	full-text search engine library
CATEGORIES =	textproc
DISTNAME =	clucene-core-0.9.21b

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=clucene/}

HOMEPAGE = 	http://clucene.sourceforge.net/
SHARED_LIBS +=	clucene               1.0     # .0.0

CONFIGURE_STYLE =	gnu
#XXX +@symlink libclucene-0.9.21b.so.1.0 with ports libtool ?
USE_LIBTOOL =		gnu
MODGNU_CONFIG_GUESS_DIRS =	${WRKSRC}/config

# LGPL/Apache
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

.include <bsd.port.mk>
