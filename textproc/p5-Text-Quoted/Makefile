# $OpenBSD: Makefile,v 1.1.1.1 2004/12/22 02:58:44 msf Exp $

COMMENT=		"extract the structure of a quoted mail message"

DISTNAME=		Text-Quoted-1.8
PKGNAME=		p5-${DISTNAME}
CATEGORIES=		textproc perl5

MAINTAINER=		Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MASTER_SITES=		${MASTER_SITE_PERL_CPAN:=Text/}

BUILD_DEPENDS=		::textproc/p5-Text-Autoformat
RUN_DEPENDS=		${BUILD_DEPENDS}

CONFIGURE_STYLE=        perl

PKG_ARCH= *

.include <bsd.port.mk>
