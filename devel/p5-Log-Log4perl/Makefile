# $OpenBSD: Makefile,v 1.21 2015/11/05 19:08:57 jca Exp $

COMMENT=	Log4j implementation for Perl

MODULES=	cpan
DISTNAME=	Log-Log4perl-1.40
CATEGORIES=	devel
REVISION=	0

# Perl
PERMIT_PACKAGE_CDROM=   Yes

TEST_DEPENDS=	devel/p5-Log-Dispatch \
		devel/p5-Log-Dispatch-FileRotate \
		databases/p5-DBD-CSV \
		net/rrdtool,-perl \
		textproc/p5-XML-DOM

.include <bsd.port.mk>
