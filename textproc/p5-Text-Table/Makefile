# $OpenBSD: Makefile,v 1.1.1.1 2004/12/09 07:22:17 kevlo Exp $

COMMENT=	"organize data in tables"

DISTNAME=	Text-Table-1.107
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Text/}

BUILD_DEPENDS=	:p5-Text-Aligner->=0.03:textproc/p5-Text-Aligner
RUN_DEPENDS=	${BUILD_DEPENDS}

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
