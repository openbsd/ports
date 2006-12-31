# $OpenBSD: Makefile,v 1.1.1.1 2006/12/31 08:30:15 msf Exp $

COMMENT=	"a formatter for spellchecking pod"

MODULES=	cpan

DISTNAME=	Pod-Spell-1.01
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
