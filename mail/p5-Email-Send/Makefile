# $OpenBSD: Makefile,v 1.1.1.1 2006/11/13 00:10:54 espie Exp $

COMMENT= 	"simply sending Email"

MODULES=	cpan

DISTNAME=	Email-Send-2.171
CATEGORIES=	mail

MAINTAINER=	Simon Dassow <janus@errornet.de>

# Artistic + GPL
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

RUN_DEPENDS=	::devel/p5-Class-Accessor \
		::devel/p5-Module-Pluggable \
		::devel/p5-Return-Value \
		::mail/p5-Email-Address \
		::mail/p5-Email-Simple

REGRESS_DEPENDS=::devel/p5-IO-All

.include <bsd.port.mk>
