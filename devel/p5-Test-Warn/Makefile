# $OpenBSD: Makefile,v 1.5 2008/11/14 09:06:56 simon Exp $

COMMENT= 	Perl extension to test methods for warnings

MODULES=	cpan
DISTNAME=	Test-Warn-0.11
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

MAKE_ENV+=	TEST_POD=Yes

.include <bsd.port.mk>
