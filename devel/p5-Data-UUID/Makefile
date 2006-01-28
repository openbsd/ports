# $OpenBSD: Makefile,v 1.2 2006/01/28 09:51:45 alek Exp $

NOT_FOR_ARCHS=	${NO_SHARED_ARCHS}

COMMENT=	"extension for generating GUIDs/UUIDs"

DISTNAME=	Data-UUID-0.11
PKGNAME=	p5-${DISTNAME}p0
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

.include <bsd.port.mk>
