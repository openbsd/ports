# $OpenBSD: Makefile,v 1.6 2009/04/10 17:34:26 giovanni Exp $

COMMENT =	MySQL maatkit tools

DISTNAME =	maatkit-3329
PKGNAME =	${DISTNAME}p0
CATEGORIES =	databases perl5

HOMEPAGE =	http:/www.maatkit.org/

MAINTAINER =	Giovanni Bechis <giovanni@openbsd.org>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	http://maatkit.googlecode.com/files/

RUN_DEPENDS =	:p5-DBD-mysql->=1.0:databases/p5-DBD-mysql \
		:p5-Term-ReadKey->=2.10:devel/p5-Term-ReadKey
BUILD_DEPENDS =	${RUN_DEPENDS}

CONFIGURE_STYLE = perl
PKG_ARCH =	*

.include <bsd.port.mk>
