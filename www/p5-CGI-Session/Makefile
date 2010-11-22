# $OpenBSD: Makefile,v 1.4 2010/11/22 08:36:50 espie Exp $

COMMENT=	persistent session data in CGI applications

MODULES=	cpan
DISTNAME=	CGI-Session-4.20
CATEGORIES=	www
USE_GROFF =	Yes

MAINTAINER=	Jason Crawford <jasonrcrawford@gmail.com>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	converters/p5-JSON \
		databases/p5-DBI \
		databases/p5-DBD-SQLite \
		databases/p5-DBD-mysql \
		databases/p5-DBD-Pg \
		devel/p5-FreezeThaw \
		devel/p5-YAML-Syck \
		www/p5-CGI-Simple

REGRESS_DEPENDS=${RUN_DEPENDS}

.include <bsd.port.mk>
