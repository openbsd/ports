# $OpenBSD: Makefile,v 1.2 2010/09/23 22:30:28 jeremy Exp $

COMMENT =	Ruby interface to nmap scan data

DISTNAME =	nmap-parser-0.3.2
REVISION =      0
CATEGORIES =	net

HOMEPAGE =	http://rubynmap.sourceforge.net/

# Apache 2.0
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=rubynmap/}

MODULES =	lang/ruby
CONFIGURE_STYLE = ruby gem
PKG_ARCH =	*

NO_REGRESS=	Yes

.include <bsd.port.mk>
