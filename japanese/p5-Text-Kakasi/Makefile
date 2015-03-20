# $OpenBSD: Makefile,v 1.13 2015/03/20 22:47:41 naddy Exp $

COMMENT=	Kanji -> kana converter, perl interface

SHARED_ONLY=	Yes
DISTNAME=	Text-Kakasi-2.04
PKGNAME=	p5-${DISTNAME}
REVISION=	5
CATEGORIES=	japanese converters textproc devel perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Text/}
MAINTAINER=	Marc Espie <espie@openbsd.org>

LIB_DEPENDS=	japanese/kakasi

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c kakasi

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
