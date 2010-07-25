# $OpenBSD: Makefile,v 1.5 2010/07/25 05:58:31 ajacoutot Exp $

COMMENT=	Kanji -> kana converter, perl interface

SHARED_ONLY=	Yes
DISTNAME=	Text-Kakasi-2.04
PKGNAME=	p5-${DISTNAME}
REVISION=	1
CATEGORIES=	japanese converters textproc devel perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Text/}
MAINTAINER=	Marc Espie <espie@openbsd.org>

LIB_DEPENDS=	::japanese/kakasi

# GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

WANTLIB += kakasi

CONFIGURE_STYLE= perl

.include <bsd.port.mk>
