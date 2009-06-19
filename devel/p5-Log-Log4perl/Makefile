# $OpenBSD: Makefile,v 1.14 2009/06/19 12:38:46 simon Exp $

COMMENT=	Log4j implementation for Perl

MODULES=	cpan
DISTNAME=	Log-Log4perl-1.23
CATEGORIES=	devel

MAINTAINER=	Simon Bertrang <simon@openbsd.org>

# perl
PERMIT_PACKAGE_CDROM=   Yes
PERMIT_PACKAGE_FTP=     Yes
PERMIT_DISTFILES_CDROM= Yes
PERMIT_DISTFILES_FTP=   Yes

REGRESS_DEPENDS=	::devel/p5-Log-Dispatch \
			::devel/p5-Log-Dispatch-FileRotate \
			::databases/p5-DBD-CSV \
			::net/rrdtool,-perl \
			::textproc/p5-XML-DOM

.include <bsd.port.mk>
