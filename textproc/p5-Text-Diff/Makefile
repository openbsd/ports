# $OpenBSD: Makefile,v 1.1.1.1 2004/06/01 23:19:24 msf Exp $

COMMENT= 	"perform diffs on files and record sets"

DISTNAME=	Text-Diff-0.35
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Text/}

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Algorithm-Diff

CONFIGURE_STYLE= perl

PKG_ARCH=	*

.include <bsd.port.mk>
