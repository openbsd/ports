# $OpenBSD: Makefile,v 1.1.1.1 2008/07/29 00:16:38 okan Exp $

COMMENT =	MySQL maatkit tools

DISTNAME =	maatkit-1972
CATEGORIES =	databases perl5

HOMEPAGE =	http://maatkit.sf.net/

MAINTAINER =	Giovanni Bechis <g.bechis@snb.it>

# GPLv2
PERMIT_PACKAGE_CDROM =	Yes
PERMIT_PACKAGE_FTP =	Yes
PERMIT_DISTFILES_CDROM = Yes
PERMIT_DISTFILES_FTP =	Yes

MASTER_SITES =	${MASTER_SITE_SOURCEFORGE:=maatkit/}

RUN_DEPENDS =	:p5-DBD-mysql->=1.0:databases/p5-DBD-mysql \
		:p5-Term-ReadKey->=2.10:devel/p5-Term-ReadKey
BUILD_DEPENDS =	${RUN_DEPENDS}

CONFIGURE_STYLE = perl

PKG_ARCH =	*

pre-install:
	@rm -rf ${WRKINST}/usr/libdata

.include <bsd.port.mk>
