# $OpenBSD: Makefile,v 1.6 2004/12/28 02:46:18 kevlo Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"library of advanced math functions"

DISTNAME=	Bit-Vector-6.4
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	math perl5

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=Bit/}

BUILD_DEPENDS=  ${RUN_DEPENDS}
RUN_DEPENDS=    :p5-Carp-Clan->=5.3:devel/p5-Carp-Clan

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
