# $OpenBSD: Makefile,v 1.8 2004/01/17 01:55:05 naddy Exp $

COMMENT=	"module to manipulate raw ip packets"

DISTNAME=	Net-RawIP-0.09d
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	net perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Net/}
NOT_FOR_ARCHES=	${NO_SHARED_ARCHES}

MAINTAINER=	Peter Valchev <pvalchev@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
