# $OpenBSD: Makefile,v 1.2 2005/03/09 02:25:29 kevlo Exp $

COMMENT=	"YAML ain't a markup language"

V=		0.36
DISTNAME=	YAML-${V}
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=YAML/}

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::textproc/p5-XML-Simple

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
