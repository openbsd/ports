# $OpenBSD: Makefile,v 1.10 2002/12/29 15:03:57 fgsch Exp $

IGNORE=		"comes with ${OPSYS} as of release 3.3"

COMMENT=	"modules for use in writing cgi scripts"

VERSION=	2.76
DISTNAME=	CGI-modules-${VERSION}
PKGNAME=	p5-CGI-${VERSION}
CATEGORIES=	www perl5

HOMEPAGE=	http://stein.cshl.org/WWW/software/CGI::modules/

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=CGI/}

BUILD_DEPENDS=	:p5-libwww-*:www/p5-libwww
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
