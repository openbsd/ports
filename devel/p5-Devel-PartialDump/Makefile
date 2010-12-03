# $OpenBSD: Makefile,v 1.4 2010/12/03 11:44:30 ajacoutot Exp $

COMMENT=		partial dumping of data structures

DISTNAME=		Devel-PartialDump-0.13
REVISION=		0

CATEGORIES=		devel

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

MODULES=		cpan
USE_GROFF =		Yes

RUN_DEPENDS=		devel/p5-Moose \
			devel/p5-Sub-Exporter \
			devel/p5-namespace-clean

.include <bsd.port.mk>
