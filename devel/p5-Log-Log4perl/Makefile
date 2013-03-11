# $OpenBSD: Makefile,v 1.19 2013/03/11 10:50:18 espie Exp $

COMMENT=	Log4j implementation for Perl

MODULES=	cpan
DISTNAME=	Log-Log4perl-1.34
CATEGORIES=	devel
USE_GROFF =	Yes

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes

TEST_DEPENDS=	devel/p5-Log-Dispatch \
			devel/p5-Log-Dispatch-FileRotate \
			databases/p5-DBD-CSV \
			net/rrdtool,-perl \
			textproc/p5-XML-DOM

.include <bsd.port.mk>
