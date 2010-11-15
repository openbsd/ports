# $OpenBSD: Makefile,v 1.4 2010/11/15 00:22:51 espie Exp $

COMMENT=	top clone for MySQL

DISTNAME=	mytop-1.6
CATEGORIES=	databases perl5

HOMEPAGE=	http://jeremy.zawodny.com/mysql/mytop/

MAINTAINER=	Dave Steinberg <dave@redterror.net>

# GPL / Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${HOMEPAGE}

RUN_DEPENDS=	STEM->=2.9004:databases/p5-DBD-mysql \
		STEM->=2.30:devel/p5-Term-ReadKey
BUILD_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE=perl
USE_GROFF =	Yes

PKG_ARCH=	*

.include <bsd.port.mk>
