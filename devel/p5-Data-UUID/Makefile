# $OpenBSD: Makefile,v 1.4 2006/09/30 12:08:48 kevlo Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"extension for generating GUIDs/UUIDs"

DISTNAME=	Data-UUID-0.145
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Data/}

MAINTAINER=	Kevin Lo <kevlo@openbsd.org>

# Artistic License
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl
CONFIGURE_ARGS= </dev/null

REGRESS_DEPENDS=	::devel/p5-Test-Pod \
			::devel/p5-Test-Pod-Coverage

.include <bsd.port.mk>
