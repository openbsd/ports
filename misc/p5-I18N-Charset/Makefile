# $OpenBSD: Makefile,v 1.13 2002/09/19 06:11:29 kevlo Exp $

COMMENT=	"module to map charset names registered with IANA"

DISTNAME=	I18N-Charset-1.21
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	misc perl5

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=I18N/}

BUILD_DEPENDS=	:p5-Test-Simple-*:devel/p5-Test-Simple \
		:p5-IO-String-*:devel/p5-IO-String
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
