# $OpenBSD: Makefile,v 1.2 2007/05/22 17:23:54 naddy Exp $

COMMENT=	"formatter for spellchecking pod"

MODULES=	cpan

DISTNAME=	Pod-Spell-1.01
PKGNAME=	p5-${DISTNAME}p0
CATEGORIES=	textproc

MAINTAINER=	Mathieu Sauve-Frankel <msd@openbsd.org>

# Perl
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::textproc/p5-Pod-Escapes

.include <bsd.port.mk>
