# $OpenBSD: Makefile,v 1.1.1.1 2005/02/27 21:02:16 espie Exp $

COMMENT=	"Kanji -> kana converter, perl interface"

SHARED_ONLY=	Yes
DISTNAME=	Text-Kakasi-2.04
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	japanese converters textproc devel perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Text/}
MAINTAINER=	Marc Espie <espie@openbsd.org>

LIB_DEPENDS=	kakasi::japanese/kakasi

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
