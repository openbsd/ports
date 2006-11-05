# $OpenBSD: Makefile,v 1.4 2006/11/05 10:31:49 espie Exp $

COMMENT= 	"perl extension for emulating troublesome interfaces"

DISTNAME=	Test-MockObject-1.07
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	devel perl5

MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Test/}

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=		::devel/p5-Universal-isa \
			::devel/p5-Universal-can

REGRESS_DEPENDS=	${RUN_DEPENDS}

CONFIGURE_STYLE= perl modbuild

PKG_ARCH= *

.include <bsd.port.mk>
