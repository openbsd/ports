# $OpenBSD: Makefile,v 1.11 2014/06/14 23:25:21 sthen Exp $

COMMENT=	Kanji -> kana converter, perl interface

SHARED_ONLY=	Yes
DISTNAME=	Text-Kakasi-2.04
PKGNAME=	p5-${DISTNAME}
REVISION=	4
CATEGORIES=	japanese converters textproc devel perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Text/}
MAINTAINER=	Marc Espie <espie@openbsd.org>

LIB_DEPENDS=	japanese/kakasi

# GPL
PERMIT_PACKAGE_CDROM=	Yes

WANTLIB += c kakasi

CONFIGURE_STYLE= perl
USE_GROFF =	Yes

.include <bsd.port.mk>
