# $OpenBSD: Makefile,v 1.2 2006/11/29 08:23:31 espie Exp $

COMMENT= 	"Perl extension to test methods for warnings"

MODULES=	cpan
DISTNAME=	Test-Warn-0.08
CATEGORIES=	devel

MAINTAINER=	Mathieu Sauve-Frankel <msf@openbsd.org>

# Artistic
PERMIT_PACKAGE_CDROM=	Yes
PERMIT_PACKAGE_FTP=	Yes
PERMIT_DISTFILES_CDROM=	Yes
PERMIT_DISTFILES_FTP=	Yes

BUILD_DEPENDS=	${RUN_DEPENDS}
RUN_DEPENDS=	::devel/p5-Array-Compare \
		::devel/p5-Test-Exception \
		::devel/p5-Tree-DAG_Node

.include <bsd.port.mk>
