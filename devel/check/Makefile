# $OpenBSD: Makefile,v 1.6 2013/01/21 10:21:52 benoit Exp $

COMMENT =	unit test framework for C programs

DISTNAME =	check-0.9.6
SHARED_LIBS +=	check	1.0	# .0.0
CATEGORIES =	devel

REVISION =	0

HOMEPAGE =	http://check.sf.net/

# LGPLv2.1
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM =Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=check/}

USE_LIBTOOL =		Yes

CONFIGURE_STYLE =	gnu
CONFIGURE_ARGS = 	--enable-plain-docdir

.include <bsd.port.mk>
